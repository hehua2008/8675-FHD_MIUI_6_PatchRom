.class public Lcom/yulong/android/modemservice/CPPhoneProperties;
.super Ljava/lang/Object;
.source "CPPhoneProperties.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;
    }
.end annotation


# static fields
.field public static ACTIVE_DEFAULT_ON:I = 0x0

.field public static final ACTIVE_DEFAULT_STATUS:Ljava/lang/String; = "active_default_tag"

.field public static ACTIVE_DEFAUTL_OFF:I = 0x0

.field public static final ADN_NOT_SUPPORT_3G:I = 0x2

.field public static final ADN_SUPPORT_3G:I = 0x0

.field public static final ADN_SUPPORT_GROUP_ONE:Ljava/lang/String; = "adn_support_group_one"

.field public static final ADN_SUPPORT_GROUP_TWO:Ljava/lang/String; = "adn_support_group_two"

.field public static final ADN_SUPPORT_PART_3G:I = 0x1

.field public static final ADN_SUPPORT_USIM_3G_ONE:Ljava/lang/String; = "adn_support_usim_3g_one"

.field public static final ADN_SUPPORT_USIM_3G_TWO:Ljava/lang/String; = "adn_support_usim_3g_two"

.field public static final AUDIOMODE_PHONE_ONE_SIGN:Ljava/lang/String; = "audiomode_phone_one"

.field public static final AUDIOMODE_PHONE_TWO_SIGN:Ljava/lang/String; = "audiomode_phone_two"

.field public static final CARD_ACTIVE_TYPE_NEED:I = 0x1

.field public static final CARD_ACTIVE_TYPE_NOTNEED:I = 0x0

.field public static final CARD_ACTIVE_TYPE_SIGN:Ljava/lang/String; = "card_active_phone_one_type"

.field public static CARD_SLOT_NUM_ONE:I = 0x0

.field public static final CARD_SLOT_NUM_TAG:Ljava/lang/String; = "card_slot_num"

.field public static CARD_SLOT_NUM_THREE:I = 0x0

.field public static CARD_SLOT_NUM_TWO:I = 0x0

.field public static final CARRIER_ALL:I = 0x1

.field public static final CARRIER_CHINA_MOBILE:I = 0x3

.field public static final CARRIER_CHINA_TELECOM:I = 0x2

.field public static final CARRIER_CHINA_UNICOM:I = 0x4

.field public static final CHECK_CARD_TYPE_FRAMEWORK:I = 0x0

.field public static final CHECK_CARD_TYPE_SERVER:I = 0x1

.field public static final CHECK_CARD_TYPE_SIGN:Ljava/lang/String; = "check_card_type"

.field public static final CLOSE_MODEM_TYPE_LOWERPOWER:I = 0x1

.field public static final CLOSE_MODEM_TYPE_NEVER:I = 0x2

.field public static final CLOSE_MODEM_TYPE_NORMAL:I = 0x0

.field public static final CLOSE_MODEM_TYPE_PHONE_ONE_SIGN:Ljava/lang/String; = "close_modem_type_phone_one"

.field public static final CLOSE_MODEM_TYPE_PHONE_TWO_SIGN:Ljava/lang/String; = "close_modem_type_phone_two"

.field public static final COMM_TYPE_C:I = 0x1

.field public static final COMM_TYPE_G:I = 0x2

.field public static final COMM_TYPE_MAX:I = 0x5

.field public static final COMM_TYPE_NONE:I = 0x0

.field public static final COMM_TYPE_PHONE_ONE_SIGN:Ljava/lang/String; = "comm_type_phone_one"

.field public static final COMM_TYPE_PHONE_TWO_SIGN:Ljava/lang/String; = "comm_type_phone_two"

.field public static final COMM_TYPE_T:I = 0x3

.field public static final COMM_TYPE_W:I = 0x4

.field public static final CSFB_BOOT_CFCC_ENABLE:Ljava/lang/String; = "csfb_boot_cfcc_enabled"

.field public static final CSFB_ENABLE:Ljava/lang/String; = "csfb_enabled"

.field public static final DATA_SERVICE_LTE_DUAL_MODULE:I = 0x2

.field public static final DATA_SERVICE_LTE_SCHEME_SIGN:Ljava/lang/String; = "data_service_lte_scheme"

.field public static final DATA_SERVICE_LTE_SINGAL_MODULE:I = 0x1

.field public static final DATA_SERVICE_SERIALIZATION_NO:Ljava/lang/String; = "0"

.field public static final DATA_SERVICE_SERIALIZATION_YES:Ljava/lang/String; = "1"

.field public static final DATA_SERVICE_SERIALIZATION_YES_NO:Ljava/lang/String; = "data_service_serilization_yes_no"

.field protected static final DBG:Z = true

.field public static final DEFAULT_NETWORK_SETTING_PHONE_ONE:Ljava/lang/String; = "default_network_setting_phone_one"

.field public static final DEFAULT_NETWORK_SETTING_PHONE_TWO:Ljava/lang/String; = "default_network_setting_phone_two"

.field public static final DSDS_DISENABLED:I = 0x0

.field public static final DSDS_ENABLED:I = 0x1

.field public static final DSDS_ENABLED_FROM_NV:Ljava/lang/String; = "yulong.radio.dsdx_type"

.field public static final DSDS_ENABLE_SIGN:Ljava/lang/String; = "dsds_enabled"

.field public static final DSDS_ENABLE_SIGN_CM:Ljava/lang/String; = "dsds_enabled_cmcc"

.field public static final DSDS_ENABLE_SIGN_CT:Ljava/lang/String; = "dsds_enabled_ct"

.field public static final DSDS_ENABLE_SIGN_CU:Ljava/lang/String; = "dsds_enabled_cu"

.field public static final DUALPHONE_CALL_SUPPORT_FALSE:Ljava/lang/String; = "0"

.field public static final DUALPHONE_CALL_SUPPORT_SIGN:Ljava/lang/String; = "dualphone_call_support"

.field public static final DUALPHONE_CALL_SUPPORT_TRUE:Ljava/lang/String; = "1"

.field public static final FAC_NUM_AAA:I = 0x7

.field public static final FAC_NUM_AKEY:I = 0x5

.field public static final FAC_NUM_AN:I = 0x6

.field public static final FAC_NUM_ARPE:I = 0x8

.field public static final FAC_NUM_IMEI:I = 0x2

.field public static final FAC_NUM_IMEI2:I = 0x3

.field public static final FAC_NUM_IMSI:I = 0x4

.field public static final FAC_NUM_MEID:I = 0x1

.field public static final FAST_POWERON_DISENABLED:I = 0x0

.field public static final FAST_POWERON_ENABLED:I = 0x1

.field public static final FAST_POWERON_ENABLE_SIGN:Ljava/lang/String; = "fast_poweron_enabled"

.field public static final GSM_TUNE_AWAY_ENABLE:Ljava/lang/String; = "gsm_tune_away_enabled"

.field public static HOT_SWAP_OFF:I = 0x0

.field public static HOT_SWAP_ON:I = 0x0

.field public static final HOT_SWAP_SUPPORT:Ljava/lang/String; = "hot_swap_support"

.field static LOG_TAG:Ljava/lang/String; = null

.field public static final LTE_ON_CDMA_ENABLED:Ljava/lang/String; = "lte_on_cdma_enabled"

.field public static LTE_ON_CDMA_FALSE:I = 0x0

.field public static LTE_ON_CDMA_TRUE:I = 0x0

.field public static final LTE_SWITCH_SUPPORT:Ljava/lang/String; = "lte_switch_support"

.field public static final MULTIPLE_PDP_DISABLED:Ljava/lang/String; = "0"

.field public static final MULTIPLE_PDP_ENABLED:Ljava/lang/String; = "1"

.field public static final MULTIPLE_PDP_ENABLE_PHONE_ONE:Ljava/lang/String; = "multiple_pdp_enable_phone_one"

.field public static final MULTIPLE_PDP_ENABLE_PHONE_TWO:Ljava/lang/String; = "multiple_pdp_enable_phone_two"

.field public static final OPERATOR_TYPE_CHINA_MOBILE:I = 0xb

.field public static final OPERATOR_TYPE_CHINA_TELECOM:I = 0xa

.field public static final OPERATOR_TYPE_CHINA_UNICOM:I = 0xc

.field public static final OPERATOR_TYPE_INDIA_MTS:I = 0x32

.field public static final OPERATOR_TYPE_METROPCS:I = 0x64

.field public static final OPERATOR_TYPE_NONE:I = 0x0

.field public static final OPERATOR_TYPE_ORANGE:I = 0x6e

.field public static final OPERATOR_TYPE_RUSS_XXX:I = 0x1e

.field public static final OPERATOR_TYPE_SFR:I = 0x82

.field public static final OPERATOR_TYPE_SIGN:Ljava/lang/String; = "operator_type"

.field public static final OPERATOR_TYPE_SPRINT:I = 0x96

.field public static final OPERATOR_TYPE_TAIWAN_XXX:I = 0x14

.field public static final OPERATOR_TYPE_T_MOBILE:I = 0x8c

.field public static final OPERATOR_TYPE_VODAFONE:I = 0x78

.field static final PROPERTY_TELEPHONE_COMM_RILD1:Ljava/lang/String; = "rild.libpath"

.field static final PROPERTY_TELEPHONE_COMM_RILD2:Ljava/lang/String; = "rild.libpath.2"

.field public static final RF_VIEW_PHONE_ONE:Ljava/lang/String; = "rf_view_phone_one"

.field public static final RF_VIEW_PHONE_TWO:Ljava/lang/String; = "rf_view_phone_two"

.field public static final RILD_DISCONNECT_NOTIFY:Ljava/lang/String; = "rild_disconnect_notify"

.field public static final RILD_DISCONNECT_NOTIFY_FASE:I = 0x0

.field public static final RILD_DISCONNECT_NOTIFY_TRUE:I = 0x1

.field public static final RILD_SOCKET_NUM_TYPE:Ljava/lang/String; = "rild_socket_num_type"

.field public static final RILD_SOCKET_NUM_TYPE_DUAL:I = 0x2

.field public static final RILD_SOCKET_NUM_TYPE_ONEONLY:I = 0x0

.field public static final RILD_SOCKET_NUM_TYPE_THREE:I = 0x3

.field public static final RILD_SOCKET_NUM_TYPE_TWOONLY:I = 0x1

.field public static SIGNAL_SHOW_SMOOTHLY_NOT_SUPPORT:I = 0x0

.field public static final SIGNAL_SHOW_SMOOTHLY_SIGN:Ljava/lang/String; = "signal_show_smoothly"

.field public static SIGNAL_SHOW_SMOOTHLY_SUPPORT:I = 0x0

.field public static final SIGNAL_STRENGTH_LEVEL_TAG:Ljava/lang/String; = "signal_strength_level_tag"

.field public static final SIGNAL_UPDATE_DELAY_TIMER:Ljava/lang/String; = "signal_update_delay_timer"

.field public static final SMS_SEND_AND_STATUS_UPDATE_TYPE_ONE:Ljava/lang/String; = "sms_sent_and_status_update_type_phone_one"

.field public static final SMS_SEND_AND_STATUS_UPDATE_TYPE_TWO:Ljava/lang/String; = "sms_sent_and_status_update_type_phone_two"

.field public static SRLTE_CSFB_OFF:I = 0x0

.field public static SRLTE_CSFB_ON:I = 0x0

.field public static final SRLTE_CSFB_STATUS:Ljava/lang/String; = "srlte_csfb_setting"

.field public static final SWITCH_CARD_DISENABLED:I = 0x0

.field public static final SWITCH_CARD_ENABLED:I = 0x1

.field public static final SWITCH_CARD_ENABLED_SIGN:Ljava/lang/String; = "switch_card_enabled"

.field public static doc:Lorg/w3c/dom/Document;

.field static isLcDsdsType:Z

.field static mOperatorType:I

.field static mSystemDefineOperatorType:I

.field static node:Lorg/w3c/dom/Node;

.field public static oldXmlFileType:I

.field static xmlManager:Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const-string v0, "CPPhoneProperties"

    sput-object v0, Lcom/yulong/android/modemservice/CPPhoneProperties;->LOG_TAG:Ljava/lang/String;

    sput v2, Lcom/yulong/android/modemservice/CPPhoneProperties;->CARD_SLOT_NUM_ONE:I

    const/4 v0, 0x2

    sput v0, Lcom/yulong/android/modemservice/CPPhoneProperties;->CARD_SLOT_NUM_TWO:I

    const/4 v0, 0x3

    sput v0, Lcom/yulong/android/modemservice/CPPhoneProperties;->CARD_SLOT_NUM_THREE:I

    sput v2, Lcom/yulong/android/modemservice/CPPhoneProperties;->SIGNAL_SHOW_SMOOTHLY_SUPPORT:I

    sput v1, Lcom/yulong/android/modemservice/CPPhoneProperties;->SIGNAL_SHOW_SMOOTHLY_NOT_SUPPORT:I

    sput v2, Lcom/yulong/android/modemservice/CPPhoneProperties;->LTE_ON_CDMA_TRUE:I

    sput v1, Lcom/yulong/android/modemservice/CPPhoneProperties;->LTE_ON_CDMA_FALSE:I

    sput v2, Lcom/yulong/android/modemservice/CPPhoneProperties;->ACTIVE_DEFAULT_ON:I

    sput v1, Lcom/yulong/android/modemservice/CPPhoneProperties;->ACTIVE_DEFAUTL_OFF:I

    sput v2, Lcom/yulong/android/modemservice/CPPhoneProperties;->SRLTE_CSFB_ON:I

    sput v1, Lcom/yulong/android/modemservice/CPPhoneProperties;->SRLTE_CSFB_OFF:I

    sput v2, Lcom/yulong/android/modemservice/CPPhoneProperties;->HOT_SWAP_ON:I

    sput v1, Lcom/yulong/android/modemservice/CPPhoneProperties;->HOT_SWAP_OFF:I

    sput-boolean v1, Lcom/yulong/android/modemservice/CPPhoneProperties;->isLcDsdsType:Z

    sput v1, Lcom/yulong/android/modemservice/CPPhoneProperties;->oldXmlFileType:I

    sput v1, Lcom/yulong/android/modemservice/CPPhoneProperties;->mOperatorType:I

    sput v1, Lcom/yulong/android/modemservice/CPPhoneProperties;->mSystemDefineOperatorType:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "phoneid"    # I

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static IsNeedActiveCard()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    sget-object v2, Lcom/yulong/android/modemservice/CPPhoneProperties;->xmlManager:Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->isXmlFileReloaded()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->loadXmlFileToMem()V

    :cond_1
    sget-object v2, Lcom/yulong/android/modemservice/CPPhoneProperties;->xmlManager:Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    const-string v3, "card_active_phone_one_type"

    invoke-virtual {v2, v3}, Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;->getAttribute1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "commType":Ljava/lang/String;
    if-eqz v0, :cond_3

    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1

    :cond_3
    if-eqz v0, :cond_4

    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_4
    sget-object v2, Lcom/yulong/android/modemservice/CPPhoneProperties;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Something is wrong with getting feature: NeedActiveCard"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static fiveOrFourLevelForSignal()I
    .locals 5

    .prologue
    const/4 v2, 0x5

    sget-object v3, Lcom/yulong/android/modemservice/CPPhoneProperties;->xmlManager:Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->isXmlFileReloaded()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->loadXmlFileToMem()V

    :cond_1
    const/4 v1, 0x0

    .local v1, "level":Ljava/lang/String;
    sget-object v3, Lcom/yulong/android/modemservice/CPPhoneProperties;->xmlManager:Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    const-string v4, "signal_strength_level_tag"

    invoke-virtual {v3, v4}, Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;->getAttribute1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    :goto_0
    return v2

    :cond_2
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/yulong/android/modemservice/CPPhoneProperties;->LOG_TAG:Ljava/lang/String;

    const-string v4, "getSignalStrengthTag Exception:"

    invoke-static {v3, v4, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static getAudioMode(I)I
    .locals 5
    .param p0, "phoneId"    # I

    .prologue
    const/4 v2, 0x2

    sget-object v3, Lcom/yulong/android/modemservice/CPPhoneProperties;->xmlManager:Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->isXmlFileReloaded()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->loadXmlFileToMem()V

    :cond_1
    const/4 v0, 0x0

    .local v0, "audioMode":Ljava/lang/String;
    const/4 v3, 0x1

    if-ne p0, v3, :cond_2

    sget-object v3, Lcom/yulong/android/modemservice/CPPhoneProperties;->xmlManager:Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    const-string v4, "audiomode_phone_one"

    invoke-virtual {v3, v4}, Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;->getAttribute1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_3

    :try_start_0
    sget-object v3, Lcom/yulong/android/modemservice/CPPhoneProperties;->LOG_TAG:Ljava/lang/String;

    const-string v4, "Something is wrong with getting feature: AutoMode"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return v2

    :cond_2
    sget-object v3, Lcom/yulong/android/modemservice/CPPhoneProperties;->xmlManager:Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    const-string v4, "audiomode_phone_two"

    invoke-virtual {v3, v4}, Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;->getAttribute1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    :try_start_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    goto :goto_1

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/yulong/android/modemservice/CPPhoneProperties;->LOG_TAG:Ljava/lang/String;

    const-string v4, "getAudioMode Exception:"

    invoke-static {v3, v4, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static getCardInfo(I)Lcom/yulong/android/internal/telephony/SlotCardInfo;
    .locals 9
    .param p0, "slotId"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x0

    .local v1, "i":I
    const/4 v3, 0x0

    .local v3, "myBinder":Landroid/os/IBinder;
    const/4 v4, 0x0

    .local v4, "phoneSlotSerivce":Lcom/yulong/android/internal/telephony/IPhoneSlotService;
    const/4 v5, 0x0

    .local v5, "slotCardInfo":Lcom/yulong/android/internal/telephony/SlotCardInfo;
    move v2, v1

    .end local v1    # "i":I
    .local v2, "i":I
    :goto_0
    if-nez v4, :cond_0

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    const/4 v7, 0x2

    if-ge v2, v7, :cond_1

    const-string v7, "nativePhoneSlot"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/yulong/android/internal/telephony/IPhoneSlotService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/yulong/android/internal/telephony/IPhoneSlotService;

    move-result-object v4

    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_0

    :cond_0
    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    :cond_1
    if-eqz v4, :cond_3

    :try_start_0
    invoke-interface {v4, p0}, Lcom/yulong/android/internal/telephony/IPhoneSlotService;->getCardInfoBySlotId(I)Lcom/yulong/android/internal/telephony/SlotCardInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    :goto_1
    if-eqz v5, :cond_2

    move-object v6, v5

    :goto_2
    return-object v6

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    sget-object v7, Lcom/yulong/android/modemservice/CPPhoneProperties;->LOG_TAG:Ljava/lang/String;

    const-string v8, "slotCardInfo is null "

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_3
    sget-object v7, Lcom/yulong/android/modemservice/CPPhoneProperties;->LOG_TAG:Ljava/lang/String;

    const-string v8, "phoneSlotSerivce is null "

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public static getCardSlotNum()I
    .locals 4

    .prologue
    sget-object v1, Lcom/yulong/android/modemservice/CPPhoneProperties;->xmlManager:Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->isXmlFileReloaded()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->loadXmlFileToMem()V

    :cond_1
    const/4 v0, 0x0

    .local v0, "cardSlotNumTag":Ljava/lang/String;
    sget-object v1, Lcom/yulong/android/modemservice/CPPhoneProperties;->xmlManager:Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    const-string v2, "card_slot_num"

    invoke-virtual {v1, v2}, Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;->getAttribute1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/yulong/android/modemservice/CPPhoneProperties;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cardSlotNumTag = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    :goto_0
    return v1

    :cond_2
    sget v1, Lcom/yulong/android/modemservice/CPPhoneProperties;->CARD_SLOT_NUM_TWO:I

    goto :goto_0
.end method

.method public static getCloseModemType(I)I
    .locals 5
    .param p0, "phoneid"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    sget-object v3, Lcom/yulong/android/modemservice/CPPhoneProperties;->xmlManager:Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->isXmlFileReloaded()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->loadXmlFileToMem()V

    :cond_1
    const/4 v0, 0x0

    .local v0, "setCloseModemType":Ljava/lang/String;
    if-ne p0, v2, :cond_3

    sget-object v3, Lcom/yulong/android/modemservice/CPPhoneProperties;->xmlManager:Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    const-string v4, "close_modem_type_phone_one"

    invoke-virtual {v3, v4}, Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;->getAttribute1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_6

    const-string v3, "0"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_2
    :goto_1
    return v1

    :cond_3
    sget-object v3, Lcom/yulong/android/modemservice/CPPhoneProperties;->xmlManager:Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    const-string v4, "close_modem_type_phone_two"

    invoke-virtual {v3, v4}, Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;->getAttribute1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    const-string v3, "1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    move v1, v2

    goto :goto_1

    :cond_5
    const-string v2, "2"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x2

    goto :goto_1

    :cond_6
    sget-object v2, Lcom/yulong/android/modemservice/CPPhoneProperties;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Something is wrong with getting feature: getCloseModemType"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static getCommType(I)I
    .locals 10
    .param p0, "phoneid"    # I

    .prologue
    const/4 v6, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v3, 0x1

    sget-object v7, Lcom/yulong/android/modemservice/CPPhoneProperties;->xmlManager:Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    if-eqz v7, :cond_0

    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->isXmlFileReloaded()Z

    move-result v7

    if-eqz v7, :cond_1

    :cond_0
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->loadXmlFileToMem()V

    :cond_1
    const/4 v2, 0x0

    .local v2, "commType":Ljava/lang/String;
    if-ne p0, v3, :cond_4

    sget-object v7, Lcom/yulong/android/modemservice/CPPhoneProperties;->xmlManager:Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    const-string v8, "comm_type_phone_one"

    invoke-virtual {v7, v8}, Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;->getAttribute1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    sget-object v7, Lcom/yulong/android/modemservice/CPPhoneProperties;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "commType = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v2, :cond_2

    const/4 v0, 0x0

    .local v0, "cardInfo":Lcom/yulong/android/internal/telephony/SlotCardInfo;
    const/4 v1, -0x1

    .local v1, "cardType":I
    if-ne p0, v3, :cond_5

    invoke-static {v5}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getCardInfo(I)Lcom/yulong/android/internal/telephony/SlotCardInfo;

    move-result-object v0

    if-nez v0, :cond_6

    sget-object v7, Lcom/yulong/android/modemservice/CPPhoneProperties;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "cardInfo == null"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "cardInfo":Lcom/yulong/android/internal/telephony/SlotCardInfo;
    .end local v1    # "cardType":I
    :cond_2
    if-eqz v2, :cond_c

    const-string v7, "0"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    move v3, v5

    :cond_3
    :goto_1
    return v3

    :cond_4
    sget-object v7, Lcom/yulong/android/modemservice/CPPhoneProperties;->xmlManager:Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    const-string v8, "comm_type_phone_two"

    invoke-virtual {v7, v8}, Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;->getAttribute1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .restart local v0    # "cardInfo":Lcom/yulong/android/internal/telephony/SlotCardInfo;
    .restart local v1    # "cardType":I
    :cond_5
    move v3, v4

    goto :goto_1

    :cond_6
    iget v1, v0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    sget-object v5, Lcom/yulong/android/modemservice/CPPhoneProperties;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cardType ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x6

    if-eq v1, v5, :cond_7

    if-eq v1, v6, :cond_7

    if-eq v1, v3, :cond_7

    if-nez v1, :cond_3

    :cond_7
    move v3, v4

    goto :goto_1

    .end local v0    # "cardInfo":Lcom/yulong/android/internal/telephony/SlotCardInfo;
    .end local v1    # "cardType":I
    :cond_8
    const-string v7, "1"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string v3, "2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    move v3, v4

    goto :goto_1

    :cond_9
    const-string v3, "3"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    move v3, v6

    goto :goto_1

    :cond_a
    const-string v3, "4"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    const/4 v3, 0x4

    goto :goto_1

    :cond_b
    const-string v3, "5"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    const/4 v3, 0x5

    goto :goto_1

    :cond_c
    sget-object v3, Lcom/yulong/android/modemservice/CPPhoneProperties;->LOG_TAG:Ljava/lang/String;

    const-string v4, "Something is wrong with getting feature: commType"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v5

    goto :goto_1
.end method

.method public static getDefaultNetworkSetting(I)I
    .locals 5
    .param p0, "phoneId"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .local v1, "getDefaultNetworkSetting":Ljava/lang/String;
    const/4 v3, 0x1

    if-ne p0, v3, :cond_0

    sget-object v3, Lcom/yulong/android/modemservice/CPPhoneProperties;->xmlManager:Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    const-string v4, "default_network_setting_phone_one"

    invoke-virtual {v3, v4}, Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;->getAttribute1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-nez v1, :cond_1

    :try_start_0
    const-string v3, "XmlManager"

    const-string v4, "getDefaultNetworkSetting is null!!!"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return v2

    :cond_0
    sget-object v3, Lcom/yulong/android/modemservice/CPPhoneProperties;->xmlManager:Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    const-string v4, "default_network_setting_phone_two"

    invoke-virtual {v3, v4}, Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;->getAttribute1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    goto :goto_1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/yulong/android/modemservice/CPPhoneProperties;->LOG_TAG:Ljava/lang/String;

    const-string v4, "getDefaultNetworkSetting Exception:"

    invoke-static {v3, v4, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static getIsDataServiceSerilization()Z
    .locals 3

    .prologue
    sget-object v1, Lcom/yulong/android/modemservice/CPPhoneProperties;->xmlManager:Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->isXmlFileReloaded()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->loadXmlFileToMem()V

    :cond_1
    sget-object v1, Lcom/yulong/android/modemservice/CPPhoneProperties;->xmlManager:Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    const-string v2, "data_service_serilization_yes_no"

    invoke-virtual {v1, v2}, Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;->getAttribute1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "configValue":Ljava/lang/String;
    if-eqz v0, :cond_2

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getLongMsgSendAndStatusChangeImplType(I)I
    .locals 5
    .param p0, "phoneid"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    sget-object v3, Lcom/yulong/android/modemservice/CPPhoneProperties;->xmlManager:Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->isXmlFileReloaded()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->loadXmlFileToMem()V

    :cond_1
    if-ne p0, v2, :cond_4

    sget-object v3, Lcom/yulong/android/modemservice/CPPhoneProperties;->xmlManager:Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    const-string v4, "sms_sent_and_status_update_type_phone_one"

    invoke-virtual {v3, v4}, Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;->getAttribute1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "type":Ljava/lang/String;
    if-eqz v0, :cond_3

    const-string v3, "0"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .end local v0    # "type":Ljava/lang/String;
    :cond_2
    :goto_0
    return v1

    .restart local v0    # "type":Ljava/lang/String;
    :cond_3
    if-eqz v0, :cond_6

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    move v1, v2

    goto :goto_0

    .end local v0    # "type":Ljava/lang/String;
    :cond_4
    const/4 v3, 0x2

    if-ne p0, v3, :cond_6

    sget-object v3, Lcom/yulong/android/modemservice/CPPhoneProperties;->xmlManager:Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    const-string v4, "sms_sent_and_status_update_type_phone_two"

    invoke-virtual {v3, v4}, Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;->getAttribute1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "type":Ljava/lang/String;
    if-eqz v0, :cond_5

    const-string v3, "0"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_5
    if-eqz v0, :cond_6

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    move v1, v2

    goto :goto_0

    .end local v0    # "type":Ljava/lang/String;
    :cond_6
    sget-object v1, Lcom/yulong/android/modemservice/CPPhoneProperties;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Something is wrong with getting modem type of phone "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    goto :goto_0
.end method

.method public static getLteSchemeSign()I
    .locals 3

    .prologue
    sget-object v1, Lcom/yulong/android/modemservice/CPPhoneProperties;->xmlManager:Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->isXmlFileReloaded()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->loadXmlFileToMem()V

    :cond_1
    const/4 v0, 0x0

    .local v0, "schemeSign":Ljava/lang/String;
    sget-object v1, Lcom/yulong/android/modemservice/CPPhoneProperties;->xmlManager:Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    const-string v2, "data_service_lte_scheme"

    invoke-virtual {v1, v2}, Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;->getAttribute1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static getOperatorType()I
    .locals 11

    .prologue
    const/4 v10, 0x6

    const/4 v9, 0x0

    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getOperatorTypeByConfig()I

    move-result v3

    .local v3, "operator":I
    if-nez v3, :cond_1

    invoke-static {v9}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getCardInfo(I)Lcom/yulong/android/internal/telephony/SlotCardInfo;

    move-result-object v0

    .local v0, "cardInfo":Lcom/yulong/android/internal/telephony/SlotCardInfo;
    const/4 v2, 0x0

    .local v2, "iccId":Ljava/lang/String;
    if-nez v0, :cond_2

    sget-object v6, Lcom/yulong/android/modemservice/CPPhoneProperties;->LOG_TAG:Ljava/lang/String;

    const-string v7, "getOperatorTypefromCardInfo: cardInfo is null, set default carrier"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    :cond_0
    :goto_0
    sput v3, Lcom/yulong/android/modemservice/CPPhoneProperties;->mOperatorType:I

    .end local v0    # "cardInfo":Lcom/yulong/android/internal/telephony/SlotCardInfo;
    .end local v2    # "iccId":Ljava/lang/String;
    :cond_1
    return v3

    .restart local v0    # "cardInfo":Lcom/yulong/android/internal/telephony/SlotCardInfo;
    .restart local v2    # "iccId":Ljava/lang/String;
    :cond_2
    iget-object v2, v0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mIccId:Ljava/lang/String;

    const/4 v4, 0x0

    .local v4, "operatorIdentify":Ljava/lang/String;
    if-nez v2, :cond_3

    sget-object v6, Lcom/yulong/android/modemservice/CPPhoneProperties;->LOG_TAG:Ljava/lang/String;

    const-string v7, "getOperatorTypefromCardInfo: iccId is null, set default carrier"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    goto :goto_0

    :cond_3
    sget-object v6, Lcom/yulong/android/modemservice/CPPhoneProperties;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getOperatorTypefromCardInfo: iccId = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-lt v6, v10, :cond_8

    invoke-virtual {v2, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/yulong/android/telephony/CPIccidOverride;->getInstance()Lcom/yulong/android/telephony/CPIccidOverride;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/yulong/android/telephony/CPIccidOverride;->getCarrier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, "carrier":Ljava/lang/String;
    sget-object v6, Lcom/yulong/android/modemservice/CPPhoneProperties;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "carrier:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_7

    const/4 v5, 0x0

    .local v5, "operatorTemp":Ljava/lang/String;
    const-string v6, "CM"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/16 v3, 0xb

    const/16 v6, 0xb

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    :goto_1
    if-eqz v5, :cond_0

    sget-object v6, Lcom/yulong/android/modemservice/CPPhoneProperties;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getOperatorType carrier"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", operatorTemp = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "yulong.radio.operator_type"

    invoke-static {v6, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    const-string v6, "CU"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/16 v3, 0xc

    const/16 v6, 0xc

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_5
    const-string v6, "CT"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    const/16 v3, 0xa

    const/16 v6, 0xa

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_6
    const/4 v3, 0x0

    sget-object v6, Lcom/yulong/android/modemservice/CPPhoneProperties;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "not exist iccId "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", set default carrier"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v5    # "operatorTemp":Ljava/lang/String;
    :cond_7
    const/4 v3, 0x0

    sget-object v6, Lcom/yulong/android/modemservice/CPPhoneProperties;->LOG_TAG:Ljava/lang/String;

    const-string v7, "carrier is null , set default carrier"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v1    # "carrier":Ljava/lang/String;
    :cond_8
    const/4 v3, 0x0

    sget-object v6, Lcom/yulong/android/modemservice/CPPhoneProperties;->LOG_TAG:Ljava/lang/String;

    const-string v7, "iccId.length() < 6, set default carrier"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public static getOperatorTypeByConfig()I
    .locals 5

    .prologue
    const/16 v4, 0xc

    const/16 v3, 0xb

    const/16 v2, 0xa

    sget v1, Lcom/yulong/android/modemservice/CPPhoneProperties;->mOperatorType:I

    if-eqz v1, :cond_0

    sget v1, Lcom/yulong/android/modemservice/CPPhoneProperties;->mOperatorType:I

    .local v0, "operatorTemp":Ljava/lang/String;
    :goto_0
    return v1

    .end local v0    # "operatorTemp":Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getOperatorTypeByXMLFile()I

    move-result v1

    sput v1, Lcom/yulong/android/modemservice/CPPhoneProperties;->mOperatorType:I

    sget v1, Lcom/yulong/android/modemservice/CPPhoneProperties;->mOperatorType:I

    if-nez v1, :cond_1

    sget v1, Lcom/yulong/android/modemservice/CPPhoneProperties;->mSystemDefineOperatorType:I

    packed-switch v1, :pswitch_data_0

    const/4 v1, 0x0

    sput v1, Lcom/yulong/android/modemservice/CPPhoneProperties;->mOperatorType:I

    :cond_1
    :goto_1
    const/4 v0, 0x0

    .restart local v0    # "operatorTemp":Ljava/lang/String;
    sget v1, Lcom/yulong/android/modemservice/CPPhoneProperties;->mOperatorType:I

    packed-switch v1, :pswitch_data_1

    sget-object v1, Lcom/yulong/android/modemservice/CPPhoneProperties;->LOG_TAG:Ljava/lang/String;

    const-string v2, "mOperatorType unknown "

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    if-eqz v0, :cond_2

    sget-object v1, Lcom/yulong/android/modemservice/CPPhoneProperties;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getOperatorTypeByConfig  operatorTemp = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "yulong.radio.operator_type"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    sget v1, Lcom/yulong/android/modemservice/CPPhoneProperties;->mOperatorType:I

    goto :goto_0

    .end local v0    # "operatorTemp":Ljava/lang/String;
    :pswitch_0
    sput v2, Lcom/yulong/android/modemservice/CPPhoneProperties;->mOperatorType:I

    goto :goto_1

    :pswitch_1
    sput v3, Lcom/yulong/android/modemservice/CPPhoneProperties;->mOperatorType:I

    goto :goto_1

    :pswitch_2
    sput v4, Lcom/yulong/android/modemservice/CPPhoneProperties;->mOperatorType:I

    goto :goto_1

    .restart local v0    # "operatorTemp":Ljava/lang/String;
    :pswitch_3
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :pswitch_4
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :pswitch_5
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xa
        :pswitch_5
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static getOperatorTypeByXMLFile()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    sget-object v2, Lcom/yulong/android/modemservice/CPPhoneProperties;->xmlManager:Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->isXmlFileReloaded()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->loadXmlFileToMem()V

    :cond_1
    sget-object v2, Lcom/yulong/android/modemservice/CPPhoneProperties;->xmlManager:Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    const-string v3, "operator_type"

    invoke-virtual {v2, v3}, Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;->getAttribute1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "commType":Ljava/lang/String;
    if-eqz v0, :cond_2

    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    :goto_0
    return v1

    :cond_3
    const-string v2, "10"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v1, 0xa

    goto :goto_0

    :cond_4
    const-string v2, "11"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/16 v1, 0xb

    goto :goto_0

    :cond_5
    const-string v2, "12"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/16 v1, 0xc

    goto :goto_0

    :cond_6
    const-string v2, "20"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const/16 v1, 0x14

    goto :goto_0

    :cond_7
    const-string v2, "30"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    const/16 v1, 0x1e

    goto :goto_0

    :cond_8
    const-string v2, "50"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    const/16 v1, 0x32

    goto :goto_0

    :cond_9
    const-string v2, "100"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    const/16 v1, 0x64

    goto :goto_0

    :cond_a
    const-string v2, "110"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    const/16 v1, 0x6e

    goto :goto_0

    :cond_b
    const-string v2, "120"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    const/16 v1, 0x78

    goto :goto_0

    :cond_c
    const-string v2, "130"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    const/16 v1, 0x82

    goto :goto_0

    :cond_d
    const-string v2, "140"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    const/16 v1, 0x8c

    goto :goto_0

    :cond_e
    const-string v2, "150"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v1, 0x96

    goto/16 :goto_0
.end method

.method public static getOperatorTypeFromSys()I
    .locals 7

    .prologue
    const/4 v3, 0x0

    .local v3, "myClassSystemUtil":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    const-string v4, "com.yulong.android.server.systeminterface.util.SystemUtil"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :goto_0
    if-eqz v3, :cond_1

    :try_start_1
    const-string v4, "getCarrierType"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .local v0, "MyMethod_CarrierType":Ljava/lang/reflect/Method;
    if-eqz v0, :cond_0

    sget-object v5, Lcom/yulong/android/modemservice/CPPhoneProperties;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getOperatorTypeFromSys: getCarrierType = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v4

    .end local v0    # "MyMethod_CarrierType":Ljava/lang/reflect/Method;
    :goto_1
    return v4

    :catch_0
    move-exception v2

    .local v2, "e1":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    .end local v2    # "e1":Ljava/lang/ClassNotFoundException;
    .restart local v0    # "MyMethod_CarrierType":Ljava/lang/reflect/Method;
    :cond_0
    :try_start_2
    sget-object v4, Lcom/yulong/android/modemservice/CPPhoneProperties;->LOG_TAG:Ljava/lang/String;

    const-string v5, "getOperatorTypeFromSys: MyMethod_CarrierType is null"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .end local v0    # "MyMethod_CarrierType":Ljava/lang/reflect/Method;
    :cond_1
    :goto_2
    sget-object v4, Lcom/yulong/android/modemservice/CPPhoneProperties;->LOG_TAG:Ljava/lang/String;

    const-string v5, "getOperatorTypeFromSys: myClassSystemUtil is null"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, -0x1

    goto :goto_1

    :catch_1
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public static getPhoneType(I)I
    .locals 3
    .param p0, "phoneid"    # I

    .prologue
    const/4 v0, 0x2

    invoke-static {p0}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getCommType(I)I

    move-result v1

    if-eq v1, v0, :cond_0

    invoke-static {p0}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getCommType(I)I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    invoke-static {p0}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getCommType(I)I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static getRfView(I)I
    .locals 5
    .param p0, "phoneid"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .local v1, "getrfvaule":Ljava/lang/String;
    const/4 v3, 0x1

    if-ne p0, v3, :cond_0

    sget-object v3, Lcom/yulong/android/modemservice/CPPhoneProperties;->xmlManager:Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    const-string v4, "rf_view_phone_one"

    invoke-virtual {v3, v4}, Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;->getAttribute1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-nez v1, :cond_1

    :goto_1
    return v2

    :cond_0
    sget-object v3, Lcom/yulong/android/modemservice/CPPhoneProperties;->xmlManager:Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    const-string v4, "rf_view_phone_two"

    invoke-virtual {v3, v4}, Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;->getAttribute1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/yulong/android/modemservice/CPPhoneProperties;->LOG_TAG:Ljava/lang/String;

    const-string v4, "getRfView Exception:"

    invoke-static {v3, v4, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static getRildPathByPhoneId(I)Ljava/lang/String;
    .locals 2
    .param p0, "phoneId"    # I

    .prologue
    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const-string v0, "rild.libpath.2"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    const-string v0, "rild.libpath"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public static getRildSocketNumType()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    sget-object v2, Lcom/yulong/android/modemservice/CPPhoneProperties;->xmlManager:Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->isXmlFileReloaded()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->loadXmlFileToMem()V

    :cond_1
    sget-object v2, Lcom/yulong/android/modemservice/CPPhoneProperties;->xmlManager:Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    const-string v3, "rild_socket_num_type"

    invoke-virtual {v2, v3}, Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;->getAttribute1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "commType":Ljava/lang/String;
    if-eqz v0, :cond_2

    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :goto_0
    return v1

    :cond_2
    if-eqz v0, :cond_3

    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_4

    const-string v2, "2"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v1, 0x2

    goto :goto_0

    :cond_4
    if-eqz v0, :cond_5

    const-string v2, "3"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v1, 0x3

    goto :goto_0

    :cond_5
    sget-object v2, Lcom/yulong/android/modemservice/CPPhoneProperties;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Something is wrong with getting feature: RildSocketNumType"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getSupportAdnType(I)I
    .locals 5
    .param p0, "phoneid"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    sget-object v3, Lcom/yulong/android/modemservice/CPPhoneProperties;->xmlManager:Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->isXmlFileReloaded()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->loadXmlFileToMem()V

    :cond_1
    const/4 v0, 0x0

    .local v0, "supportAdnType":Ljava/lang/String;
    if-ne p0, v2, :cond_3

    sget-object v3, Lcom/yulong/android/modemservice/CPPhoneProperties;->xmlManager:Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    const-string v4, "adn_support_usim_3g_one"

    invoke-virtual {v3, v4}, Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;->getAttribute1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_6

    const-string v3, "0"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_2
    :goto_1
    return v1

    :cond_3
    sget-object v3, Lcom/yulong/android/modemservice/CPPhoneProperties;->xmlManager:Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    const-string v4, "adn_support_usim_3g_two"

    invoke-virtual {v3, v4}, Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;->getAttribute1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    const-string v3, "1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    move v1, v2

    goto :goto_1

    :cond_5
    const-string v2, "2"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x2

    goto :goto_1

    :cond_6
    sget-object v2, Lcom/yulong/android/modemservice/CPPhoneProperties;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Something is wrong with getting feature: getSupportAdnType"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static init()V
    .locals 5

    .prologue
    const-string v1, "persist.yulong.operators.mode"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .local v0, "mOperatorsMode":I
    sget-object v1, Lcom/yulong/android/modemservice/CPPhoneProperties;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " cpphoneproperties  init, persist.yulong.operators.mode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget v1, Lcom/yulong/android/modemservice/CPPhoneProperties;->mSystemDefineOperatorType:I

    if-nez v1, :cond_0

    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getOperatorTypeFromSys()I

    move-result v1

    sput v1, Lcom/yulong/android/modemservice/CPPhoneProperties;->mSystemDefineOperatorType:I

    :cond_0
    sget-object v1, Lcom/yulong/android/modemservice/CPPhoneProperties;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " cpphoneproperties  mSystemDefineOperatorType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/yulong/android/modemservice/CPPhoneProperties;->mSystemDefineOperatorType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget v1, Lcom/yulong/android/modemservice/CPPhoneProperties;->mSystemDefineOperatorType:I

    if-ne v1, v0, :cond_1

    sget-object v1, Lcom/yulong/android/modemservice/CPPhoneProperties;->LOG_TAG:Ljava/lang/String;

    const-string v2, " cpphoneproperties  mSystemDefineOperatorType == mOperatorsMode "

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->loadXmlFileToMem()V

    sget-object v1, Lcom/yulong/android/modemservice/CPPhoneProperties;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " load data:card_slot_num = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/yulong/android/modemservice/CPPhoneProperties;->xmlManager:Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    const-string v4, "card_slot_num"

    invoke-virtual {v3, v4}, Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;->getAttribute1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/yulong/android/modemservice/CPPhoneProperties;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " comm_type_phone_one = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/yulong/android/modemservice/CPPhoneProperties;->xmlManager:Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    const-string v4, "comm_type_phone_one"

    invoke-virtual {v3, v4}, Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;->getAttribute1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/yulong/android/modemservice/CPPhoneProperties;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " comm_type_phone_two = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/yulong/android/modemservice/CPPhoneProperties;->xmlManager:Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    const-string v4, "comm_type_phone_two"

    invoke-virtual {v3, v4}, Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;->getAttribute1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/yulong/android/modemservice/CPPhoneProperties;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " rild_socket_num_type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/yulong/android/modemservice/CPPhoneProperties;->xmlManager:Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    const-string v4, "rild_socket_num_type"

    invoke-virtual {v3, v4}, Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;->getAttribute1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/yulong/android/modemservice/CPPhoneProperties;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " operator_type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/yulong/android/modemservice/CPPhoneProperties;->xmlManager:Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    const-string v4, "operator_type"

    invoke-virtual {v3, v4}, Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;->getAttribute1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/yulong/android/modemservice/CPPhoneProperties;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " check_card_type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/yulong/android/modemservice/CPPhoneProperties;->xmlManager:Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    const-string v4, "check_card_type"

    invoke-virtual {v3, v4}, Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;->getAttribute1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/yulong/android/modemservice/CPPhoneProperties;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " fast_poweron_enabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/yulong/android/modemservice/CPPhoneProperties;->xmlManager:Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    const-string v4, "fast_poweron_enabled"

    invoke-virtual {v3, v4}, Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;->getAttribute1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/yulong/android/modemservice/CPPhoneProperties;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " switch_card_enabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/yulong/android/modemservice/CPPhoneProperties;->xmlManager:Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    const-string v4, "switch_card_enabled"

    invoke-virtual {v3, v4}, Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;->getAttribute1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/yulong/android/modemservice/CPPhoneProperties;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " card_active_phone_one_type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/yulong/android/modemservice/CPPhoneProperties;->xmlManager:Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    const-string v4, "card_active_phone_one_type"

    invoke-virtual {v3, v4}, Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;->getAttribute1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/yulong/android/modemservice/CPPhoneProperties;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " rild.libpath = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/yulong/android/modemservice/CPPhoneProperties;->xmlManager:Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    const-string v4, "rild.libpath"

    invoke-virtual {v3, v4}, Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;->getAttribute1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/yulong/android/modemservice/CPPhoneProperties;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " rild.libpath.2 = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/yulong/android/modemservice/CPPhoneProperties;->xmlManager:Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    const-string v4, "rild.libpath.2"

    invoke-virtual {v3, v4}, Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;->getAttribute1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/yulong/android/modemservice/CPPhoneProperties;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " data_service_serilization_yes_no = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/yulong/android/modemservice/CPPhoneProperties;->xmlManager:Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    const-string v4, "data_service_serilization_yes_no"

    invoke-virtual {v3, v4}, Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;->getAttribute1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/yulong/android/modemservice/CPPhoneProperties;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " multiple_pdp_enable_phone_one = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/yulong/android/modemservice/CPPhoneProperties;->xmlManager:Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    const-string v4, "multiple_pdp_enable_phone_one"

    invoke-virtual {v3, v4}, Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;->getAttribute1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/yulong/android/modemservice/CPPhoneProperties;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " multiple_pdp_enable_phone_two = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/yulong/android/modemservice/CPPhoneProperties;->xmlManager:Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    const-string v4, "multiple_pdp_enable_phone_two"

    invoke-virtual {v3, v4}, Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;->getAttribute1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/yulong/android/modemservice/CPPhoneProperties;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " audiomode_phone_one = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/yulong/android/modemservice/CPPhoneProperties;->xmlManager:Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    const-string v4, "audiomode_phone_one"

    invoke-virtual {v3, v4}, Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;->getAttribute1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/yulong/android/modemservice/CPPhoneProperties;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " audiomode_phone_two = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/yulong/android/modemservice/CPPhoneProperties;->xmlManager:Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    const-string v4, "audiomode_phone_two"

    invoke-virtual {v3, v4}, Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;->getAttribute1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/yulong/android/modemservice/CPPhoneProperties;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " dualphone_call_support = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/yulong/android/modemservice/CPPhoneProperties;->xmlManager:Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    const-string v4, "dualphone_call_support"

    invoke-virtual {v3, v4}, Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;->getAttribute1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/yulong/android/modemservice/CPPhoneProperties;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " close_modem_type_phone_one = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/yulong/android/modemservice/CPPhoneProperties;->xmlManager:Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    const-string v4, "close_modem_type_phone_one"

    invoke-virtual {v3, v4}, Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;->getAttribute1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/yulong/android/modemservice/CPPhoneProperties;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " close_modem_type_phone_two = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/yulong/android/modemservice/CPPhoneProperties;->xmlManager:Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    const-string v4, "close_modem_type_phone_two"

    invoke-virtual {v3, v4}, Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;->getAttribute1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/yulong/android/modemservice/CPPhoneProperties;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " signal_strength_level_tag "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/yulong/android/modemservice/CPPhoneProperties;->xmlManager:Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    const-string v4, "signal_strength_level_tag"

    invoke-virtual {v3, v4}, Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;->getAttribute1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/yulong/android/modemservice/CPPhoneProperties;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " signal_update_delay_timer "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/yulong/android/modemservice/CPPhoneProperties;->xmlManager:Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    const-string v4, "signal_update_delay_timer"

    invoke-virtual {v3, v4}, Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;->getAttribute1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/yulong/android/modemservice/CPPhoneProperties;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " rf_view_phone_one = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/yulong/android/modemservice/CPPhoneProperties;->xmlManager:Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    const-string v4, "rf_view_phone_one"

    invoke-virtual {v3, v4}, Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;->getAttribute1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/yulong/android/modemservice/CPPhoneProperties;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " rf_view_phone_two ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/yulong/android/modemservice/CPPhoneProperties;->xmlManager:Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    const-string v4, "rf_view_phone_two"

    invoke-virtual {v3, v4}, Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;->getAttribute1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/yulong/android/modemservice/CPPhoneProperties;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " rild_disconnect_notify = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/yulong/android/modemservice/CPPhoneProperties;->xmlManager:Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    const-string v4, "rild_disconnect_notify"

    invoke-virtual {v3, v4}, Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;->getAttribute1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/yulong/android/modemservice/CPPhoneProperties;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " gsm_tune_away_enabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/yulong/android/modemservice/CPPhoneProperties;->xmlManager:Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    const-string v4, "gsm_tune_away_enabled"

    invoke-virtual {v3, v4}, Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;->getAttribute1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/yulong/android/modemservice/CPPhoneProperties;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " dsds_enabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/yulong/android/modemservice/CPPhoneProperties;->xmlManager:Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    const-string v4, "dsds_enabled"

    invoke-virtual {v3, v4}, Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;->getAttribute1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/yulong/android/modemservice/CPPhoneProperties;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " dsds_enabled_cmcc = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/yulong/android/modemservice/CPPhoneProperties;->xmlManager:Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    const-string v4, "dsds_enabled_cmcc"

    invoke-virtual {v3, v4}, Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;->getAttribute1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/yulong/android/modemservice/CPPhoneProperties;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " dsds_enabled_ct = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/yulong/android/modemservice/CPPhoneProperties;->xmlManager:Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    const-string v4, "dsds_enabled_ct"

    invoke-virtual {v3, v4}, Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;->getAttribute1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/yulong/android/modemservice/CPPhoneProperties;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " dsds_enabled_cu = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/yulong/android/modemservice/CPPhoneProperties;->xmlManager:Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    const-string v4, "dsds_enabled_cu"

    invoke-virtual {v3, v4}, Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;->getAttribute1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/yulong/android/modemservice/CPPhoneProperties;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " lte_switch_support = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/yulong/android/modemservice/CPPhoneProperties;->xmlManager:Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    const-string v4, "lte_switch_support"

    invoke-virtual {v3, v4}, Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;->getAttribute1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/yulong/android/modemservice/CPPhoneProperties;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " csfb_boot_cfcc_enabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/yulong/android/modemservice/CPPhoneProperties;->xmlManager:Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    const-string v4, "csfb_boot_cfcc_enabled"

    invoke-virtual {v3, v4}, Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;->getAttribute1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/yulong/android/modemservice/CPPhoneProperties;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " csfb_enabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/yulong/android/modemservice/CPPhoneProperties;->xmlManager:Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    const-string v4, "csfb_enabled"

    invoke-virtual {v3, v4}, Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;->getAttribute1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    sget-object v1, Lcom/yulong/android/modemservice/CPPhoneProperties;->LOG_TAG:Ljava/lang/String;

    const-string v2, " cpphoneproperties  mSystemDefineOperatorType != mOperatorsMode status error!!!! "

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput v0, Lcom/yulong/android/modemservice/CPPhoneProperties;->mSystemDefineOperatorType:I

    goto/16 :goto_0
.end method

.method public static isActiveDefaultOn()Z
    .locals 3

    .prologue
    sget-object v1, Lcom/yulong/android/modemservice/CPPhoneProperties;->xmlManager:Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    if-nez v1, :cond_0

    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->loadXmlFileToMem()V

    :cond_0
    const/4 v0, 0x0

    .local v0, "activeTag":Ljava/lang/String;
    sget-object v1, Lcom/yulong/android/modemservice/CPPhoneProperties;->xmlManager:Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    const-string v2, "active_default_tag"

    invoke-virtual {v1, v2}, Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;->getAttribute1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sget v2, Lcom/yulong/android/modemservice/CPPhoneProperties;->ACTIVE_DEFAUTL_OFF:I

    if-ne v1, v2, :cond_1

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isCFCCAllowedOverLTE()Z
    .locals 3

    .prologue
    sget-object v1, Lcom/yulong/android/modemservice/CPPhoneProperties;->xmlManager:Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->isXmlFileReloaded()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->loadXmlFileToMem()V

    :cond_1
    sget-object v1, Lcom/yulong/android/modemservice/CPPhoneProperties;->xmlManager:Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    const-string v2, "csfb_boot_cfcc_enabled"

    invoke-virtual {v1, v2}, Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;->getAttribute1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "lteCallForwardSupport":Ljava/lang/String;
    if-eqz v0, :cond_2

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isCallIn()Z
    .locals 3

    .prologue
    sget-object v1, Lcom/yulong/android/modemservice/CPPhoneProperties;->xmlManager:Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    if-nez v1, :cond_0

    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->loadXmlFileToMem()V

    :cond_0
    const/4 v0, 0x0

    .local v0, "SRLTE_CSFB":Ljava/lang/String;
    sget-object v1, Lcom/yulong/android/modemservice/CPPhoneProperties;->xmlManager:Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    const-string v2, "srlte_csfb_setting"

    invoke-virtual {v1, v2}, Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;->getAttribute1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sget v2, Lcom/yulong/android/modemservice/CPPhoneProperties;->SRLTE_CSFB_ON:I

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isCsfbEnable()Z
    .locals 3

    .prologue
    sget-object v1, Lcom/yulong/android/modemservice/CPPhoneProperties;->xmlManager:Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->isXmlFileReloaded()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->loadXmlFileToMem()V

    :cond_1
    sget-object v1, Lcom/yulong/android/modemservice/CPPhoneProperties;->xmlManager:Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    const-string v2, "csfb_enabled"

    invoke-virtual {v1, v2}, Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;->getAttribute1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "csfbenable":Ljava/lang/String;
    if-eqz v0, :cond_2

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isDsdsEnabled()Z
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    sget-object v4, Lcom/yulong/android/modemservice/CPPhoneProperties;->xmlManager:Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->isXmlFileReloaded()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->loadXmlFileToMem()V

    :cond_1
    sget-object v4, Lcom/yulong/android/modemservice/CPPhoneProperties;->xmlManager:Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    const-string v5, "dsds_enabled"

    invoke-virtual {v4, v5}, Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;->getAttribute1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "commType":Ljava/lang/String;
    if-eqz v0, :cond_3

    const-string v4, "0"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v2, v3

    :cond_2
    :goto_0
    return v2

    :cond_3
    if-eqz v0, :cond_4

    const-string v4, "1"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    :cond_4
    const-string v4, "yulong.radio.dsdx_type"

    const-string v5, "default_mode"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, "dsdsType":Ljava/lang/String;
    sget-object v4, Lcom/yulong/android/modemservice/CPPhoneProperties;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "get dsds value from nv: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "1"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    move v2, v3

    goto :goto_0
.end method

.method public static isDualPhoneCallSupport()Z
    .locals 3

    .prologue
    sget-object v1, Lcom/yulong/android/modemservice/CPPhoneProperties;->xmlManager:Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->isXmlFileReloaded()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->loadXmlFileToMem()V

    :cond_1
    sget-object v1, Lcom/yulong/android/modemservice/CPPhoneProperties;->xmlManager:Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    const-string v2, "dualphone_call_support"

    invoke-virtual {v1, v2}, Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;->getAttribute1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "dualPhoneCallSupport":Ljava/lang/String;
    if-eqz v0, :cond_2

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isFastPowerOnEnabled()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    sget-object v2, Lcom/yulong/android/modemservice/CPPhoneProperties;->xmlManager:Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->isXmlFileReloaded()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->loadXmlFileToMem()V

    :cond_1
    sget-object v2, Lcom/yulong/android/modemservice/CPPhoneProperties;->xmlManager:Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    const-string v3, "fast_poweron_enabled"

    invoke-virtual {v2, v3}, Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;->getAttribute1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "commType":Ljava/lang/String;
    if-eqz v0, :cond_2

    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :goto_0
    return v1

    :cond_2
    if-eqz v0, :cond_3

    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    sget-object v2, Lcom/yulong/android/modemservice/CPPhoneProperties;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Something is wrong with getting feature: commType"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static isGsmTuneAwayEnabled()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    sget-object v2, Lcom/yulong/android/modemservice/CPPhoneProperties;->xmlManager:Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->isXmlFileReloaded()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->loadXmlFileToMem()V

    :cond_1
    sget-object v2, Lcom/yulong/android/modemservice/CPPhoneProperties;->xmlManager:Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    const-string v3, "gsm_tune_away_enabled"

    invoke-virtual {v2, v3}, Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;->getAttribute1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "commType":Ljava/lang/String;
    if-eqz v0, :cond_2

    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :goto_0
    return v1

    :cond_2
    if-eqz v0, :cond_3

    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    sget-object v2, Lcom/yulong/android/modemservice/CPPhoneProperties;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Something is wrong with getting feature: GsmTuneAwayEnabled"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static isHotSwapSupport()Z
    .locals 3

    .prologue
    sget-object v1, Lcom/yulong/android/modemservice/CPPhoneProperties;->xmlManager:Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    if-nez v1, :cond_0

    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->loadXmlFileToMem()V

    :cond_0
    const/4 v0, 0x0

    .local v0, "HOT_SWAP":Ljava/lang/String;
    sget-object v1, Lcom/yulong/android/modemservice/CPPhoneProperties;->xmlManager:Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    const-string v2, "hot_swap_support"

    invoke-virtual {v1, v2}, Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;->getAttribute1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sget v2, Lcom/yulong/android/modemservice/CPPhoneProperties;->HOT_SWAP_ON:I

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isLTESwitchSupport()Z
    .locals 3

    .prologue
    sget-object v1, Lcom/yulong/android/modemservice/CPPhoneProperties;->xmlManager:Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->isXmlFileReloaded()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->loadXmlFileToMem()V

    :cond_1
    sget-object v1, Lcom/yulong/android/modemservice/CPPhoneProperties;->xmlManager:Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    const-string v2, "lte_switch_support"

    invoke-virtual {v1, v2}, Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;->getAttribute1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "lteSupportSwitch":Ljava/lang/String;
    if-eqz v0, :cond_2

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isLteOnCdmaEnabled()Z
    .locals 3

    .prologue
    sget-object v1, Lcom/yulong/android/modemservice/CPPhoneProperties;->xmlManager:Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    if-nez v1, :cond_0

    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->loadXmlFileToMem()V

    :cond_0
    const/4 v0, 0x0

    .local v0, "lteTag":Ljava/lang/String;
    sget-object v1, Lcom/yulong/android/modemservice/CPPhoneProperties;->xmlManager:Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    const-string v2, "lte_on_cdma_enabled"

    invoke-virtual {v1, v2}, Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;->getAttribute1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sget v2, Lcom/yulong/android/modemservice/CPPhoneProperties;->LTE_ON_CDMA_TRUE:I

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isMutiplePdpEnabled(I)Z
    .locals 5
    .param p0, "phoneID"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    sget-object v3, Lcom/yulong/android/modemservice/CPPhoneProperties;->xmlManager:Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->isXmlFileReloaded()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->loadXmlFileToMem()V

    :cond_1
    if-ne p0, v2, :cond_3

    sget-object v3, Lcom/yulong/android/modemservice/CPPhoneProperties;->xmlManager:Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    const-string v4, "multiple_pdp_enable_phone_one"

    invoke-virtual {v3, v4}, Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;->getAttribute1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "configValue":Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_2

    const-string v3, "1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v1, v2

    .end local v0    # "configValue":Ljava/lang/String;
    :cond_2
    return v1

    :cond_3
    const/4 v3, 0x2

    if-ne p0, v3, :cond_2

    sget-object v3, Lcom/yulong/android/modemservice/CPPhoneProperties;->xmlManager:Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    const-string v4, "multiple_pdp_enable_phone_two"

    invoke-virtual {v3, v4}, Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;->getAttribute1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "configValue":Ljava/lang/String;
    goto :goto_0
.end method

.method public static isOverseaProduct()Z
    .locals 2

    .prologue
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getOperatorType()I

    move-result v0

    .local v0, "operatorType":I
    const/16 v1, 0x64

    if-lt v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isRildDisconnectNotify()I
    .locals 3

    .prologue
    sget-object v1, Lcom/yulong/android/modemservice/CPPhoneProperties;->xmlManager:Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->isXmlFileReloaded()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->loadXmlFileToMem()V

    :cond_1
    sget-object v1, Lcom/yulong/android/modemservice/CPPhoneProperties;->xmlManager:Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    const-string v2, "rild_disconnect_notify"

    invoke-virtual {v1, v2}, Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;->getAttribute1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "commType":Ljava/lang/String;
    if-eqz v0, :cond_2

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isSEDRegion()Z
    .locals 3

    .prologue
    const-string v0, "true"

    const-string v1, "ro.secure.system"

    const-string v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isSignalOrDualPhone()I
    .locals 4

    .prologue
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getCardSlotNum()I

    move-result v0

    .local v0, "slot_num":I
    sget-object v1, Lcom/yulong/android/modemservice/CPPhoneProperties;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSignalOrDualPhone slot_num = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static isSupportAdnGroup(I)Z
    .locals 4
    .param p0, "phoneid"    # I

    .prologue
    const/4 v1, 0x1

    sget-object v2, Lcom/yulong/android/modemservice/CPPhoneProperties;->xmlManager:Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->isXmlFileReloaded()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->loadXmlFileToMem()V

    :cond_1
    const/4 v0, 0x0

    .local v0, "bEnable":Ljava/lang/String;
    if-ne p0, v1, :cond_3

    sget-object v2, Lcom/yulong/android/modemservice/CPPhoneProperties;->xmlManager:Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    const-string v3, "adn_support_group_one"

    invoke-virtual {v2, v3}, Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;->getAttribute1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_5

    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v1, 0x0

    :cond_2
    :goto_1
    return v1

    :cond_3
    sget-object v2, Lcom/yulong/android/modemservice/CPPhoneProperties;->xmlManager:Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    const-string v3, "adn_support_group_two"

    invoke-virtual {v2, v3}, Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;->getAttribute1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_5
    sget-object v2, Lcom/yulong/android/modemservice/CPPhoneProperties;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Something is wrong with getting feature: isSupportAdnGroup"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static isSwitchSlotEnabled()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    sget-object v2, Lcom/yulong/android/modemservice/CPPhoneProperties;->xmlManager:Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->isXmlFileReloaded()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->loadXmlFileToMem()V

    :cond_1
    sget-object v2, Lcom/yulong/android/modemservice/CPPhoneProperties;->xmlManager:Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    const-string v3, "switch_card_enabled"

    invoke-virtual {v2, v3}, Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;->getAttribute1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "commType":Ljava/lang/String;
    if-eqz v0, :cond_2

    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :goto_0
    return v1

    :cond_2
    if-eqz v0, :cond_3

    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    sget-object v2, Lcom/yulong/android/modemservice/CPPhoneProperties;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Something is wrong with getting feature: SwitchSlotEnabled"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static isWriteNumberSupportted(I)Z
    .locals 7
    .param p0, "key"    # I

    .prologue
    sget-object v4, Lcom/yulong/android/modemservice/CPPhoneProperties;->xmlManager:Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->isXmlFileReloaded()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->loadXmlFileToMem()V

    :cond_1
    const/4 v2, 0x0

    .local v2, "ret":Z
    const/4 v3, 0x0

    .local v3, "temp":I
    sget-object v4, Lcom/yulong/android/modemservice/CPPhoneProperties;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isWriteNumberSupportted key = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v4, Lcom/yulong/android/modemservice/CPPhoneProperties;->xmlManager:Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    const-string v5, "operate_fac_num_support"

    invoke-virtual {v4, v5}, Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;->getAttribute1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "facnumSupport":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .local v1, "intSupport":I
    sget-object v4, Lcom/yulong/android/modemservice/CPPhoneProperties;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isWriteNumberSupportted intSupport = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch p0, :pswitch_data_0

    :goto_0
    if-nez v3, :cond_2

    const/4 v2, 0x0

    :goto_1
    sget-object v4, Lcom/yulong/android/modemservice/CPPhoneProperties;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isWriteNumberSupportted ret = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :pswitch_0
    and-int/lit8 v3, v1, 0x1

    goto :goto_0

    :pswitch_1
    and-int/lit8 v3, v1, 0x2

    goto :goto_0

    :pswitch_2
    and-int/lit8 v3, v1, 0x4

    goto :goto_0

    :pswitch_3
    and-int/lit8 v3, v1, 0x8

    goto :goto_0

    :pswitch_4
    and-int/lit8 v3, v1, 0x10

    goto :goto_0

    :pswitch_5
    and-int/lit8 v3, v1, 0x20

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static isXmlFileReloaded()Z
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v4, "yulong.lcdsds.mode"

    invoke-static {v4, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .local v0, "lcDsdsMode":I
    const/4 v1, 0x0

    .local v1, "newXmlFileType":I
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    if-nez v0, :cond_1

    move v1, v2

    :goto_1
    sget v4, Lcom/yulong/android/modemservice/CPPhoneProperties;->oldXmlFileType:I

    if-ne v1, v4, :cond_2

    :goto_2
    return v2

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_1

    :cond_2
    sget-object v2, Lcom/yulong/android/modemservice/CPPhoneProperties;->LOG_TAG:Ljava/lang/String;

    const-string v4, "isXmlFileReloaded true"

    invoke-static {v2, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput v1, Lcom/yulong/android/modemservice/CPPhoneProperties;->oldXmlFileType:I

    move v2, v3

    goto :goto_2
.end method

.method public static loadXmlFileToMem()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    const-string v2, "yulong.lcdsds.mode"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .local v0, "lcDsdsMode":I
    const-string v2, "persist.yulong.operators.mode"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .local v1, "mOperatorsMode":I
    sget-object v2, Lcom/yulong/android/modemservice/CPPhoneProperties;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "property_lcdsds_mode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", persist.yulong.operators.mode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_4

    if-ne v5, v1, :cond_0

    new-instance v2, Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    const-string v3, "etc/comm-feature-all.xml"

    invoke-direct {v2, v3}, Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;-><init>(Ljava/lang/String;)V

    sput-object v2, Lcom/yulong/android/modemservice/CPPhoneProperties;->xmlManager:Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    :goto_0
    return-void

    :cond_0
    const/4 v2, 0x2

    if-ne v2, v1, :cond_1

    new-instance v2, Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    const-string v3, "etc/comm-feature-ct.xml"

    invoke-direct {v2, v3}, Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;-><init>(Ljava/lang/String;)V

    sput-object v2, Lcom/yulong/android/modemservice/CPPhoneProperties;->xmlManager:Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    goto :goto_0

    :cond_1
    const/4 v2, 0x3

    if-ne v2, v1, :cond_2

    new-instance v2, Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    const-string v3, "etc/comm-feature-cm.xml"

    invoke-direct {v2, v3}, Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;-><init>(Ljava/lang/String;)V

    sput-object v2, Lcom/yulong/android/modemservice/CPPhoneProperties;->xmlManager:Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    goto :goto_0

    :cond_2
    const/4 v2, 0x4

    if-ne v2, v1, :cond_3

    new-instance v2, Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    const-string v3, "etc/comm-feature-cu.xml"

    invoke-direct {v2, v3}, Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;-><init>(Ljava/lang/String;)V

    sput-object v2, Lcom/yulong/android/modemservice/CPPhoneProperties;->xmlManager:Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    goto :goto_0

    :cond_3
    new-instance v2, Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    const-string v3, "etc/comm-feature.xml"

    invoke-direct {v2, v3}, Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;-><init>(Ljava/lang/String;)V

    sput-object v2, Lcom/yulong/android/modemservice/CPPhoneProperties;->xmlManager:Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    goto :goto_0

    :cond_4
    if-ne v5, v1, :cond_5

    new-instance v2, Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    const-string v3, "etc/dsds-feature-all.xml"

    invoke-direct {v2, v3}, Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;-><init>(Ljava/lang/String;)V

    sput-object v2, Lcom/yulong/android/modemservice/CPPhoneProperties;->xmlManager:Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    goto :goto_0

    :cond_5
    new-instance v2, Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    const-string v3, "etc/dsds-feature.xml"

    invoke-direct {v2, v3}, Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;-><init>(Ljava/lang/String;)V

    sput-object v2, Lcom/yulong/android/modemservice/CPPhoneProperties;->xmlManager:Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    goto :goto_0
.end method

.method public static loadXmlFileToMem(Z)V
    .locals 4
    .param p0, "isDsdsType"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v1, "persist.yulong.operators.mode"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .local v0, "mOperatorsMode":I
    if-ne p0, v3, :cond_1

    sput-boolean v3, Lcom/yulong/android/modemservice/CPPhoneProperties;->isLcDsdsType:Z

    const-string v1, "yulong.lcdsds.mode"

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    if-ne v3, v0, :cond_0

    new-instance v1, Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    const-string v2, "etc/dsds-feature-all.xml"

    invoke-direct {v1, v2}, Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/yulong/android/modemservice/CPPhoneProperties;->xmlManager:Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    const-string v2, "etc/dsds-feature.xml"

    invoke-direct {v1, v2}, Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/yulong/android/modemservice/CPPhoneProperties;->xmlManager:Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    goto :goto_0

    :cond_1
    sput-boolean v2, Lcom/yulong/android/modemservice/CPPhoneProperties;->isLcDsdsType:Z

    const-string v1, "yulong.lcdsds.mode"

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    if-ne v3, v0, :cond_2

    new-instance v1, Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    const-string v2, "etc/comm-feature-all.xml"

    invoke-direct {v1, v2}, Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/yulong/android/modemservice/CPPhoneProperties;->xmlManager:Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    if-ne v1, v0, :cond_3

    new-instance v1, Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    const-string v2, "etc/comm-feature-ct.xml"

    invoke-direct {v1, v2}, Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/yulong/android/modemservice/CPPhoneProperties;->xmlManager:Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    goto :goto_0

    :cond_3
    const/4 v1, 0x3

    if-ne v1, v0, :cond_4

    new-instance v1, Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    const-string v2, "etc/comm-feature-cm.xml"

    invoke-direct {v1, v2}, Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/yulong/android/modemservice/CPPhoneProperties;->xmlManager:Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    goto :goto_0

    :cond_4
    const/4 v1, 0x4

    if-ne v1, v0, :cond_5

    new-instance v1, Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    const-string v2, "etc/comm-feature-cu.xml"

    invoke-direct {v1, v2}, Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/yulong/android/modemservice/CPPhoneProperties;->xmlManager:Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    goto :goto_0

    :cond_5
    new-instance v1, Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    const-string v2, "etc/comm-feature.xml"

    invoke-direct {v1, v2}, Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/yulong/android/modemservice/CPPhoneProperties;->xmlManager:Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    goto :goto_0
.end method

.method public static showSignalLevelSmoothly()Z
    .locals 3

    .prologue
    sget-object v1, Lcom/yulong/android/modemservice/CPPhoneProperties;->xmlManager:Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    if-nez v1, :cond_0

    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->loadXmlFileToMem()V

    :cond_0
    const/4 v0, 0x0

    .local v0, "smoothTag":Ljava/lang/String;
    sget-object v1, Lcom/yulong/android/modemservice/CPPhoneProperties;->xmlManager:Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    const-string v2, "signal_show_smoothly"

    invoke-virtual {v1, v2}, Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;->getAttribute1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sget v2, Lcom/yulong/android/modemservice/CPPhoneProperties;->SIGNAL_SHOW_SMOOTHLY_NOT_SUPPORT:I

    if-ne v1, v2, :cond_1

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static signalUpdateDelayTimer()I
    .locals 3

    .prologue
    sget-object v1, Lcom/yulong/android/modemservice/CPPhoneProperties;->xmlManager:Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    if-nez v1, :cond_0

    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->loadXmlFileToMem()V

    :cond_0
    const/4 v0, 0x0

    .local v0, "delayTimer":Ljava/lang/String;
    sget-object v1, Lcom/yulong/android/modemservice/CPPhoneProperties;->xmlManager:Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    const-string v2, "signal_update_delay_timer"

    invoke-virtual {v1, v2}, Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;->getAttribute1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
