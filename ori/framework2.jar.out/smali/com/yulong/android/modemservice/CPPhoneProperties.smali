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

    .line 73
    const-string v0, "CPPhoneProperties"

    sput-object v0, Lcom/yulong/android/modemservice/CPPhoneProperties;->LOG_TAG:Ljava/lang/String;

    .line 187
    sput v2, Lcom/yulong/android/modemservice/CPPhoneProperties;->CARD_SLOT_NUM_ONE:I

    .line 188
    const/4 v0, 0x2

    sput v0, Lcom/yulong/android/modemservice/CPPhoneProperties;->CARD_SLOT_NUM_TWO:I

    .line 189
    const/4 v0, 0x3

    sput v0, Lcom/yulong/android/modemservice/CPPhoneProperties;->CARD_SLOT_NUM_THREE:I

    .line 192
    sput v2, Lcom/yulong/android/modemservice/CPPhoneProperties;->SIGNAL_SHOW_SMOOTHLY_SUPPORT:I

    .line 193
    sput v1, Lcom/yulong/android/modemservice/CPPhoneProperties;->SIGNAL_SHOW_SMOOTHLY_NOT_SUPPORT:I

    .line 198
    sput v2, Lcom/yulong/android/modemservice/CPPhoneProperties;->LTE_ON_CDMA_TRUE:I

    .line 199
    sput v1, Lcom/yulong/android/modemservice/CPPhoneProperties;->LTE_ON_CDMA_FALSE:I

    .line 202
    sput v2, Lcom/yulong/android/modemservice/CPPhoneProperties;->ACTIVE_DEFAULT_ON:I

    .line 203
    sput v1, Lcom/yulong/android/modemservice/CPPhoneProperties;->ACTIVE_DEFAUTL_OFF:I

    .line 205
    sput v2, Lcom/yulong/android/modemservice/CPPhoneProperties;->SRLTE_CSFB_ON:I

    .line 206
    sput v1, Lcom/yulong/android/modemservice/CPPhoneProperties;->SRLTE_CSFB_OFF:I

    .line 208
    sput v2, Lcom/yulong/android/modemservice/CPPhoneProperties;->HOT_SWAP_ON:I

    .line 209
    sput v1, Lcom/yulong/android/modemservice/CPPhoneProperties;->HOT_SWAP_OFF:I

    .line 224
    sput-boolean v1, Lcom/yulong/android/modemservice/CPPhoneProperties;->isLcDsdsType:Z

    .line 225
    sput v1, Lcom/yulong/android/modemservice/CPPhoneProperties;->oldXmlFileType:I

    .line 231
    sput v1, Lcom/yulong/android/modemservice/CPPhoneProperties;->mOperatorType:I

    .line 232
    sput v1, Lcom/yulong/android/modemservice/CPPhoneProperties;->mSystemDefineOperatorType:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "phoneid"    # I

    .prologue
    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 240
    return-void
.end method

.method public static IsNeedActiveCard()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 707
    sget-object v2, Lcom/yulong/android/modemservice/CPPhoneProperties;->xmlManager:Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->isXmlFileReloaded()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 708
    :cond_0
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->loadXmlFileToMem()V

    .line 710
    :cond_1
    sget-object v2, Lcom/yulong/android/modemservice/CPPhoneProperties;->xmlManager:Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    const-string v3, "card_active_phone_one_type"

    invoke-virtual {v2, v3}, Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;->getAttribute1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 712
    .local v0, "commType":Ljava/lang/String;
    if-eqz v0, :cond_3

    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 713
    const/4 v1, 0x0

    .line 720
    :cond_2
    :goto_0
    return v1

    .line 714
    :cond_3
    if-eqz v0, :cond_4

    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 718
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

    .line 906
    sget-object v3, Lcom/yulong/android/modemservice/CPPhoneProperties;->xmlManager:Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->isXmlFileReloaded()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 907
    :cond_0
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->loadXmlFileToMem()V

    .line 909
    :cond_1
    const/4 v1, 0x0

    .line 910
    .local v1, "level":Ljava/lang/String;
    sget-object v3, Lcom/yulong/android/modemservice/CPPhoneProperties;->xmlManager:Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    const-string v4, "signal_strength_level_tag"

    invoke-virtual {v3, v4}, Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;->getAttribute1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 912
    if-nez v1, :cond_2

    .line 920
    :goto_0
    return v2

    .line 917
    :cond_2
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 918
    :catch_0
    move-exception v0

    .line 919
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

    .line 781
    sget-object v3, Lcom/yulong/android/modemservice/CPPhoneProperties;->xmlManager:Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->isXmlFileReloaded()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 782
    :cond_0
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->loadXmlFileToMem()V

    .line 784
    :cond_1
    const/4 v0, 0x0

    .line 785
    .local v0, "audioMode":Ljava/lang/String;
    const/4 v3, 0x1

    if-ne p0, v3, :cond_2

    .line 786
    sget-object v3, Lcom/yulong/android/modemservice/CPPhoneProperties;->xmlManager:Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    const-string v4, "audiomode_phone_one"

    invoke-virtual {v3, v4}, Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;->getAttribute1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 791
    :goto_0
    if-nez v0, :cond_3

    .line 792
    :try_start_0
    sget-object v3, Lcom/yulong/android/modemservice/CPPhoneProperties;->LOG_TAG:Ljava/lang/String;

    const-string v4, "Something is wrong with getting feature: AutoMode"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 799
    :goto_1
    return v2

    .line 788
    :cond_2
    sget-object v3, Lcom/yulong/android/modemservice/CPPhoneProperties;->xmlManager:Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    const-string v4, "audiomode_phone_two"

    invoke-virtual {v3, v4}, Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;->getAttribute1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 796
    :cond_3
    :try_start_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    goto :goto_1

    .line 797
    :catch_0
    move-exception v1

    .line 798
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

    .line 1323
    const/4 v1, 0x0

    .line 1324
    .local v1, "i":I
    const/4 v3, 0x0

    .line 1325
    .local v3, "myBinder":Landroid/os/IBinder;
    const/4 v4, 0x0

    .line 1326
    .local v4, "phoneSlotSerivce":Lcom/yulong/android/internal/telephony/IPhoneSlotService;
    const/4 v5, 0x0

    .local v5, "slotCardInfo":Lcom/yulong/android/internal/telephony/SlotCardInfo;
    move v2, v1

    .line 1328
    .end local v1    # "i":I
    .local v2, "i":I
    :goto_0
    if-nez v4, :cond_0

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    const/4 v7, 0x2

    if-ge v2, v7, :cond_1

    .line 1329
    const-string v7, "nativePhoneSlot"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 1330
    invoke-static {v3}, Lcom/yulong/android/internal/telephony/IPhoneSlotService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/yulong/android/internal/telephony/IPhoneSlotService;

    move-result-object v4

    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_0

    :cond_0
    move v1, v2

    .line 1332
    .end local v2    # "i":I
    .restart local v1    # "i":I
    :cond_1
    if-eqz v4, :cond_3

    .line 1334
    :try_start_0
    invoke-interface {v4, p0}, Lcom/yulong/android/internal/telephony/IPhoneSlotService;->getCardInfoBySlotId(I)Lcom/yulong/android/internal/telephony/SlotCardInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 1340
    :goto_1
    if-eqz v5, :cond_2

    move-object v6, v5

    .line 1348
    :goto_2
    return-object v6

    .line 1335
    :catch_0
    move-exception v0

    .line 1337
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 1343
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    sget-object v7, Lcom/yulong/android/modemservice/CPPhoneProperties;->LOG_TAG:Ljava/lang/String;

    const-string v8, "slotCardInfo is null "

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1347
    :cond_3
    sget-object v7, Lcom/yulong/android/modemservice/CPPhoneProperties;->LOG_TAG:Ljava/lang/String;

    const-string v8, "phoneSlotSerivce is null "

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public static getCardSlotNum()I
    .locals 4

    .prologue
    .line 1005
    sget-object v1, Lcom/yulong/android/modemservice/CPPhoneProperties;->xmlManager:Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->isXmlFileReloaded()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1006
    :cond_0
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->loadXmlFileToMem()V

    .line 1008
    :cond_1
    const/4 v0, 0x0

    .line 1009
    .local v0, "cardSlotNumTag":Ljava/lang/String;
    sget-object v1, Lcom/yulong/android/modemservice/CPPhoneProperties;->xmlManager:Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    const-string v2, "card_slot_num"

    invoke-virtual {v1, v2}, Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;->getAttribute1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1010
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

    .line 1011
    if-eqz v0, :cond_2

    .line 1012
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1014
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

    .line 819
    sget-object v3, Lcom/yulong/android/modemservice/CPPhoneProperties;->xmlManager:Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->isXmlFileReloaded()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 820
    :cond_0
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->loadXmlFileToMem()V

    .line 822
    :cond_1
    const/4 v0, 0x0

    .line 823
    .local v0, "setCloseModemType":Ljava/lang/String;
    if-ne p0, v2, :cond_3

    .line 824
    sget-object v3, Lcom/yulong/android/modemservice/CPPhoneProperties;->xmlManager:Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    const-string v4, "close_modem_type_phone_one"

    invoke-virtual {v3, v4}, Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;->getAttribute1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 830
    :goto_0
    if-eqz v0, :cond_6

    .line 831
    const-string v3, "0"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 842
    :cond_2
    :goto_1
    return v1

    .line 827
    :cond_3
    sget-object v3, Lcom/yulong/android/modemservice/CPPhoneProperties;->xmlManager:Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    const-string v4, "close_modem_type_phone_two"

    invoke-virtual {v3, v4}, Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;->getAttribute1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 833
    :cond_4
    const-string v3, "1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    move v1, v2

    .line 834
    goto :goto_1

    .line 835
    :cond_5
    const-string v2, "2"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 836
    const/4 v1, 0x2

    goto :goto_1

    .line 839
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

    .line 354
    sget-object v7, Lcom/yulong/android/modemservice/CPPhoneProperties;->xmlManager:Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    if-eqz v7, :cond_0

    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->isXmlFileReloaded()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 355
    :cond_0
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->loadXmlFileToMem()V

    .line 357
    :cond_1
    const/4 v2, 0x0

    .line 358
    .local v2, "commType":Ljava/lang/String;
    if-ne p0, v3, :cond_4

    .line 359
    sget-object v7, Lcom/yulong/android/modemservice/CPPhoneProperties;->xmlManager:Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    const-string v8, "comm_type_phone_one"

    invoke-virtual {v7, v8}, Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;->getAttribute1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 363
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

    .line 365
    if-nez v2, :cond_2

    .line 366
    const/4 v0, 0x0

    .line 367
    .local v0, "cardInfo":Lcom/yulong/android/internal/telephony/SlotCardInfo;
    const/4 v1, -0x1

    .line 368
    .local v1, "cardType":I
    if-ne p0, v3, :cond_5

    .line 369
    invoke-static {v5}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getCardInfo(I)Lcom/yulong/android/internal/telephony/SlotCardInfo;

    move-result-object v0

    .line 375
    if-nez v0, :cond_6

    .line 376
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

    .line 391
    .end local v0    # "cardInfo":Lcom/yulong/android/internal/telephony/SlotCardInfo;
    .end local v1    # "cardType":I
    :cond_2
    if-eqz v2, :cond_c

    .line 392
    const-string v7, "0"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    move v3, v5

    .line 408
    :cond_3
    :goto_1
    return v3

    .line 361
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

    .line 371
    goto :goto_1

    .line 378
    :cond_6
    iget v1, v0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    .line 379
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

    .line 380
    const/4 v5, 0x6

    if-eq v1, v5, :cond_7

    if-eq v1, v6, :cond_7

    if-eq v1, v3, :cond_7

    if-nez v1, :cond_3

    :cond_7
    move v3, v4

    .line 384
    goto :goto_1

    .line 394
    .end local v0    # "cardInfo":Lcom/yulong/android/internal/telephony/SlotCardInfo;
    .end local v1    # "cardType":I
    :cond_8
    const-string v7, "1"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 396
    const-string v3, "2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    move v3, v4

    .line 397
    goto :goto_1

    .line 398
    :cond_9
    const-string v3, "3"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    move v3, v6

    .line 399
    goto :goto_1

    .line 400
    :cond_a
    const-string v3, "4"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 401
    const/4 v3, 0x4

    goto :goto_1

    .line 402
    :cond_b
    const-string v3, "5"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 403
    const/4 v3, 0x5

    goto :goto_1

    .line 406
    :cond_c
    sget-object v3, Lcom/yulong/android/modemservice/CPPhoneProperties;->LOG_TAG:Ljava/lang/String;

    const-string v4, "Something is wrong with getting feature: commType"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v5

    .line 408
    goto :goto_1
.end method

.method public static getDefaultNetworkSetting(I)I
    .locals 5
    .param p0, "phoneId"    # I

    .prologue
    const/4 v2, 0x0

    .line 1162
    const/4 v1, 0x0

    .line 1163
    .local v1, "getDefaultNetworkSetting":Ljava/lang/String;
    const/4 v3, 0x1

    if-ne p0, v3, :cond_0

    .line 1164
    sget-object v3, Lcom/yulong/android/modemservice/CPPhoneProperties;->xmlManager:Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    const-string v4, "default_network_setting_phone_one"

    invoke-virtual {v3, v4}, Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;->getAttribute1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1170
    :goto_0
    if-nez v1, :cond_1

    .line 1171
    :try_start_0
    const-string v3, "XmlManager"

    const-string v4, "getDefaultNetworkSetting is null!!!"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1177
    :goto_1
    return v2

    .line 1166
    :cond_0
    sget-object v3, Lcom/yulong/android/modemservice/CPPhoneProperties;->xmlManager:Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    const-string v4, "default_network_setting_phone_two"

    invoke-virtual {v3, v4}, Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;->getAttribute1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1174
    :cond_1
    :try_start_1
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    goto :goto_1

    .line 1175
    :catch_0
    move-exception v0

    .line 1176
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/yulong/android/modemservice/CPPhoneProperties;->LOG_TAG:Ljava/lang/String;

    const-string v4, "getDefaultNetworkSetting Exception:"

    invoke-static {v3, v4, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static getIsDataServiceSerilization()Z
    .locals 3

    .prologue
    .line 740
    sget-object v1, Lcom/yulong/android/modemservice/CPPhoneProperties;->xmlManager:Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->isXmlFileReloaded()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 741
    :cond_0
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->loadXmlFileToMem()V

    .line 745
    :cond_1
    sget-object v1, Lcom/yulong/android/modemservice/CPPhoneProperties;->xmlManager:Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    const-string v2, "data_service_serilization_yes_no"

    invoke-virtual {v1, v2}, Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;->getAttribute1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 747
    .local v0, "configValue":Ljava/lang/String;
    if-eqz v0, :cond_2

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 749
    const/4 v1, 0x1

    .line 751
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

    .line 1134
    sget-object v3, Lcom/yulong/android/modemservice/CPPhoneProperties;->xmlManager:Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->isXmlFileReloaded()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1135
    :cond_0
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->loadXmlFileToMem()V

    .line 1137
    :cond_1
    if-ne p0, v2, :cond_4

    .line 1138
    sget-object v3, Lcom/yulong/android/modemservice/CPPhoneProperties;->xmlManager:Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    const-string v4, "sms_sent_and_status_update_type_phone_one"

    invoke-virtual {v3, v4}, Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;->getAttribute1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1140
    .local v0, "type":Ljava/lang/String;
    if-eqz v0, :cond_3

    const-string v3, "0"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1157
    .end local v0    # "type":Ljava/lang/String;
    :cond_2
    :goto_0
    return v1

    .line 1142
    .restart local v0    # "type":Ljava/lang/String;
    :cond_3
    if-eqz v0, :cond_6

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    move v1, v2

    .line 1143
    goto :goto_0

    .line 1145
    .end local v0    # "type":Ljava/lang/String;
    :cond_4
    const/4 v3, 0x2

    if-ne p0, v3, :cond_6

    .line 1146
    sget-object v3, Lcom/yulong/android/modemservice/CPPhoneProperties;->xmlManager:Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    const-string v4, "sms_sent_and_status_update_type_phone_two"

    invoke-virtual {v3, v4}, Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;->getAttribute1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1148
    .restart local v0    # "type":Ljava/lang/String;
    if-eqz v0, :cond_5

    const-string v3, "0"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1150
    :cond_5
    if-eqz v0, :cond_6

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    move v1, v2

    .line 1151
    goto :goto_0

    .line 1155
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

    .line 1157
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public static getLteSchemeSign()I
    .locals 3

    .prologue
    .line 925
    sget-object v1, Lcom/yulong/android/modemservice/CPPhoneProperties;->xmlManager:Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->isXmlFileReloaded()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 926
    :cond_0
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->loadXmlFileToMem()V

    .line 928
    :cond_1
    const/4 v0, 0x0

    .line 929
    .local v0, "schemeSign":Ljava/lang/String;
    sget-object v1, Lcom/yulong/android/modemservice/CPPhoneProperties;->xmlManager:Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    const-string v2, "data_service_lte_scheme"

    invoke-virtual {v1, v2}, Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;->getAttribute1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 930
    if-eqz v0, :cond_2

    .line 931
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 933
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

    .line 602
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getOperatorTypeByConfig()I

    move-result v3

    .line 603
    .local v3, "operator":I
    if-nez v3, :cond_1

    .line 604
    invoke-static {v9}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getCardInfo(I)Lcom/yulong/android/internal/telephony/SlotCardInfo;

    move-result-object v0

    .line 605
    .local v0, "cardInfo":Lcom/yulong/android/internal/telephony/SlotCardInfo;
    const/4 v2, 0x0

    .line 607
    .local v2, "iccId":Ljava/lang/String;
    if-nez v0, :cond_2

    .line 608
    sget-object v6, Lcom/yulong/android/modemservice/CPPhoneProperties;->LOG_TAG:Ljava/lang/String;

    const-string v7, "getOperatorTypefromCardInfo: cardInfo is null, set default carrier"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    const/4 v3, 0x0

    .line 655
    :cond_0
    :goto_0
    sput v3, Lcom/yulong/android/modemservice/CPPhoneProperties;->mOperatorType:I

    .line 658
    .end local v0    # "cardInfo":Lcom/yulong/android/internal/telephony/SlotCardInfo;
    .end local v2    # "iccId":Ljava/lang/String;
    :cond_1
    return v3

    .line 611
    .restart local v0    # "cardInfo":Lcom/yulong/android/internal/telephony/SlotCardInfo;
    .restart local v2    # "iccId":Ljava/lang/String;
    :cond_2
    iget-object v2, v0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mIccId:Ljava/lang/String;

    .line 612
    const/4 v4, 0x0

    .line 613
    .local v4, "operatorIdentify":Ljava/lang/String;
    if-nez v2, :cond_3

    .line 614
    sget-object v6, Lcom/yulong/android/modemservice/CPPhoneProperties;->LOG_TAG:Ljava/lang/String;

    const-string v7, "getOperatorTypefromCardInfo: iccId is null, set default carrier"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    const/4 v3, 0x0

    goto :goto_0

    .line 617
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

    .line 618
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-lt v6, v10, :cond_8

    .line 619
    invoke-virtual {v2, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 620
    invoke-static {}, Lcom/yulong/android/telephony/CPIccidOverride;->getInstance()Lcom/yulong/android/telephony/CPIccidOverride;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/yulong/android/telephony/CPIccidOverride;->getCarrier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 622
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

    .line 623
    if-eqz v1, :cond_7

    .line 624
    const/4 v5, 0x0

    .line 625
    .local v5, "operatorTemp":Ljava/lang/String;
    const-string v6, "CM"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 626
    const/16 v3, 0xb

    .line 627
    const/16 v6, 0xb

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    .line 640
    :goto_1
    if-eqz v5, :cond_0

    .line 641
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

    .line 642
    const-string v6, "yulong.radio.operator_type"

    invoke-static {v6, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 628
    :cond_4
    const-string v6, "CU"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 629
    const/16 v3, 0xc

    .line 630
    const/16 v6, 0xc

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 631
    :cond_5
    const-string v6, "CT"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 632
    const/16 v3, 0xa

    .line 633
    const/16 v6, 0xa

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 635
    :cond_6
    const/4 v3, 0x0

    .line 636
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

    .line 646
    .end local v5    # "operatorTemp":Ljava/lang/String;
    :cond_7
    const/4 v3, 0x0

    .line 647
    sget-object v6, Lcom/yulong/android/modemservice/CPPhoneProperties;->LOG_TAG:Ljava/lang/String;

    const-string v7, "carrier is null , set default carrier"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 650
    .end local v1    # "carrier":Ljava/lang/String;
    :cond_8
    const/4 v3, 0x0

    .line 651
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

    .line 556
    sget v1, Lcom/yulong/android/modemservice/CPPhoneProperties;->mOperatorType:I

    if-eqz v1, :cond_0

    .line 557
    sget v1, Lcom/yulong/android/modemservice/CPPhoneProperties;->mOperatorType:I

    .line 598
    .local v0, "operatorTemp":Ljava/lang/String;
    :goto_0
    return v1

    .line 559
    .end local v0    # "operatorTemp":Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getOperatorTypeByXMLFile()I

    move-result v1

    sput v1, Lcom/yulong/android/modemservice/CPPhoneProperties;->mOperatorType:I

    .line 560
    sget v1, Lcom/yulong/android/modemservice/CPPhoneProperties;->mOperatorType:I

    if-nez v1, :cond_1

    .line 561
    sget v1, Lcom/yulong/android/modemservice/CPPhoneProperties;->mSystemDefineOperatorType:I

    packed-switch v1, :pswitch_data_0

    .line 572
    const/4 v1, 0x0

    sput v1, Lcom/yulong/android/modemservice/CPPhoneProperties;->mOperatorType:I

    .line 577
    :cond_1
    :goto_1
    const/4 v0, 0x0

    .line 578
    .restart local v0    # "operatorTemp":Ljava/lang/String;
    sget v1, Lcom/yulong/android/modemservice/CPPhoneProperties;->mOperatorType:I

    packed-switch v1, :pswitch_data_1

    .line 589
    sget-object v1, Lcom/yulong/android/modemservice/CPPhoneProperties;->LOG_TAG:Ljava/lang/String;

    const-string v2, "mOperatorType unknown "

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    :goto_2
    if-eqz v0, :cond_2

    .line 593
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

    .line 594
    const-string v1, "yulong.radio.operator_type"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    :cond_2
    sget v1, Lcom/yulong/android/modemservice/CPPhoneProperties;->mOperatorType:I

    goto :goto_0

    .line 563
    .end local v0    # "operatorTemp":Ljava/lang/String;
    :pswitch_0
    sput v2, Lcom/yulong/android/modemservice/CPPhoneProperties;->mOperatorType:I

    goto :goto_1

    .line 566
    :pswitch_1
    sput v3, Lcom/yulong/android/modemservice/CPPhoneProperties;->mOperatorType:I

    goto :goto_1

    .line 569
    :pswitch_2
    sput v4, Lcom/yulong/android/modemservice/CPPhoneProperties;->mOperatorType:I

    goto :goto_1

    .line 580
    .restart local v0    # "operatorTemp":Ljava/lang/String;
    :pswitch_3
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 581
    goto :goto_2

    .line 583
    :pswitch_4
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 584
    goto :goto_2

    .line 586
    :pswitch_5
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 587
    goto :goto_2

    .line 561
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 578
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

    .line 486
    sget-object v2, Lcom/yulong/android/modemservice/CPPhoneProperties;->xmlManager:Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->isXmlFileReloaded()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 487
    :cond_0
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->loadXmlFileToMem()V

    .line 489
    :cond_1
    sget-object v2, Lcom/yulong/android/modemservice/CPPhoneProperties;->xmlManager:Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    const-string v3, "operator_type"

    invoke-virtual {v2, v3}, Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;->getAttribute1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 490
    .local v0, "commType":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 491
    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 522
    :cond_2
    :goto_0
    return v1

    .line 493
    :cond_3
    const-string v2, "10"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 494
    const/16 v1, 0xa

    goto :goto_0

    .line 495
    :cond_4
    const-string v2, "11"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 496
    const/16 v1, 0xb

    goto :goto_0

    .line 497
    :cond_5
    const-string v2, "12"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 498
    const/16 v1, 0xc

    goto :goto_0

    .line 499
    :cond_6
    const-string v2, "20"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 500
    const/16 v1, 0x14

    goto :goto_0

    .line 501
    :cond_7
    const-string v2, "30"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 502
    const/16 v1, 0x1e

    goto :goto_0

    .line 503
    :cond_8
    const-string v2, "50"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 504
    const/16 v1, 0x32

    goto :goto_0

    .line 505
    :cond_9
    const-string v2, "100"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 506
    const/16 v1, 0x64

    goto :goto_0

    .line 507
    :cond_a
    const-string v2, "110"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 508
    const/16 v1, 0x6e

    goto :goto_0

    .line 509
    :cond_b
    const-string v2, "120"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 510
    const/16 v1, 0x78

    goto :goto_0

    .line 511
    :cond_c
    const-string v2, "130"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 512
    const/16 v1, 0x82

    goto :goto_0

    .line 513
    :cond_d
    const-string v2, "140"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 514
    const/16 v1, 0x8c

    goto :goto_0

    .line 515
    :cond_e
    const-string v2, "150"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 516
    const/16 v1, 0x96

    goto/16 :goto_0
.end method

.method public static getOperatorTypeFromSys()I
    .locals 7

    .prologue
    .line 526
    const/4 v3, 0x0

    .line 528
    .local v3, "myClassSystemUtil":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    const-string v4, "com.yulong.android.server.systeminterface.util.SystemUtil"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 534
    :goto_0
    if-eqz v3, :cond_1

    .line 537
    :try_start_1
    const-string v4, "getCarrierType"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 539
    .local v0, "MyMethod_CarrierType":Ljava/lang/reflect/Method;
    if-eqz v0, :cond_0

    .line 540
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

    .line 542
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v4

    .line 551
    .end local v0    # "MyMethod_CarrierType":Ljava/lang/reflect/Method;
    :goto_1
    return v4

    .line 530
    :catch_0
    move-exception v2

    .line 532
    .local v2, "e1":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 545
    .end local v2    # "e1":Ljava/lang/ClassNotFoundException;
    .restart local v0    # "MyMethod_CarrierType":Ljava/lang/reflect/Method;
    :cond_0
    :try_start_2
    sget-object v4, Lcom/yulong/android/modemservice/CPPhoneProperties;->LOG_TAG:Ljava/lang/String;

    const-string v5, "getOperatorTypeFromSys: MyMethod_CarrierType is null"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 550
    .end local v0    # "MyMethod_CarrierType":Ljava/lang/reflect/Method;
    :cond_1
    :goto_2
    sget-object v4, Lcom/yulong/android/modemservice/CPPhoneProperties;->LOG_TAG:Ljava/lang/String;

    const-string v5, "getOperatorTypeFromSys: myClassSystemUtil is null"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    const/4 v4, -0x1

    goto :goto_1

    .line 546
    :catch_1
    move-exception v1

    .line 547
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public static getPhoneType(I)I
    .locals 3
    .param p0, "phoneid"    # I

    .prologue
    const/4 v0, 0x2

    .line 412
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

    .line 415
    :cond_0
    const/4 v0, 0x1

    .line 417
    :cond_1
    return v0
.end method

.method public static getRfView(I)I
    .locals 5
    .param p0, "phoneid"    # I

    .prologue
    const/4 v2, 0x0

    .line 939
    const/4 v1, 0x0

    .line 940
    .local v1, "getrfvaule":Ljava/lang/String;
    const/4 v3, 0x1

    if-ne p0, v3, :cond_0

    .line 941
    sget-object v3, Lcom/yulong/android/modemservice/CPPhoneProperties;->xmlManager:Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    const-string v4, "rf_view_phone_one"

    invoke-virtual {v3, v4}, Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;->getAttribute1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 947
    :goto_0
    if-nez v1, :cond_1

    .line 953
    :goto_1
    return v2

    .line 943
    :cond_0
    sget-object v3, Lcom/yulong/android/modemservice/CPPhoneProperties;->xmlManager:Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    const-string v4, "rf_view_phone_two"

    invoke-virtual {v3, v4}, Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;->getAttribute1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 950
    :cond_1
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_1

    .line 951
    :catch_0
    move-exception v0

    .line 952
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
    .line 730
    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    .line 731
    const-string v0, "rild.libpath.2"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 735
    :goto_0
    return-object v0

    .line 732
    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    .line 733
    const-string v0, "rild.libpath"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 735
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public static getRildSocketNumType()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 461
    sget-object v2, Lcom/yulong/android/modemservice/CPPhoneProperties;->xmlManager:Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->isXmlFileReloaded()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 462
    :cond_0
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->loadXmlFileToMem()V

    .line 464
    :cond_1
    sget-object v2, Lcom/yulong/android/modemservice/CPPhoneProperties;->xmlManager:Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    const-string v3, "rild_socket_num_type"

    invoke-virtual {v2, v3}, Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;->getAttribute1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 465
    .local v0, "commType":Ljava/lang/String;
    if-eqz v0, :cond_2

    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 477
    :goto_0
    return v1

    .line 467
    :cond_2
    if-eqz v0, :cond_3

    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 468
    const/4 v1, 0x1

    goto :goto_0

    .line 469
    :cond_3
    if-eqz v0, :cond_4

    const-string v2, "2"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 470
    const/4 v1, 0x2

    goto :goto_0

    .line 471
    :cond_4
    if-eqz v0, :cond_5

    const-string v2, "3"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 472
    const/4 v1, 0x3

    goto :goto_0

    .line 475
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

    .line 846
    sget-object v3, Lcom/yulong/android/modemservice/CPPhoneProperties;->xmlManager:Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->isXmlFileReloaded()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 847
    :cond_0
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->loadXmlFileToMem()V

    .line 849
    :cond_1
    const/4 v0, 0x0

    .line 850
    .local v0, "supportAdnType":Ljava/lang/String;
    if-ne p0, v2, :cond_3

    .line 851
    sget-object v3, Lcom/yulong/android/modemservice/CPPhoneProperties;->xmlManager:Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    const-string v4, "adn_support_usim_3g_one"

    invoke-virtual {v3, v4}, Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;->getAttribute1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 855
    :goto_0
    if-eqz v0, :cond_6

    .line 856
    const-string v3, "0"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 867
    :cond_2
    :goto_1
    return v1

    .line 853
    :cond_3
    sget-object v3, Lcom/yulong/android/modemservice/CPPhoneProperties;->xmlManager:Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    const-string v4, "adn_support_usim_3g_two"

    invoke-virtual {v3, v4}, Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;->getAttribute1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 858
    :cond_4
    const-string v3, "1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    move v1, v2

    .line 859
    goto :goto_1

    .line 860
    :cond_5
    const-string v2, "2"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 861
    const/4 v1, 0x2

    goto :goto_1

    .line 864
    :cond_6
    sget-object v2, Lcom/yulong/android/modemservice/CPPhoneProperties;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Something is wrong with getting feature: getSupportAdnType"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static init()V
    .locals 5

    .prologue
    .line 301
    const-string v1, "persist.yulong.operators.mode"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 303
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

    .line 306
    sget v1, Lcom/yulong/android/modemservice/CPPhoneProperties;->mSystemDefineOperatorType:I

    if-nez v1, :cond_0

    .line 307
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getOperatorTypeFromSys()I

    move-result v1

    sput v1, Lcom/yulong/android/modemservice/CPPhoneProperties;->mSystemDefineOperatorType:I

    .line 309
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

    .line 311
    sget v1, Lcom/yulong/android/modemservice/CPPhoneProperties;->mSystemDefineOperatorType:I

    if-ne v1, v0, :cond_1

    .line 312
    sget-object v1, Lcom/yulong/android/modemservice/CPPhoneProperties;->LOG_TAG:Ljava/lang/String;

    const-string v2, " cpphoneproperties  mSystemDefineOperatorType == mOperatorsMode "

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    :goto_0
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->loadXmlFileToMem()V

    .line 319
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

    .line 320
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

    .line 321
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

    .line 322
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

    .line 323
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

    .line 324
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

    .line 325
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

    .line 326
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

    .line 327
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

    .line 328
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

    .line 329
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

    .line 330
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

    .line 331
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

    .line 332
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

    .line 333
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

    .line 334
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

    .line 335
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

    .line 336
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

    .line 337
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

    .line 338
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

    .line 339
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

    .line 340
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

    .line 341
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

    .line 342
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

    .line 343
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

    .line 344
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

    .line 345
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

    .line 346
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

    .line 347
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

    .line 348
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

    .line 349
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

    .line 350
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

    .line 351
    return-void

    .line 314
    :cond_1
    sget-object v1, Lcom/yulong/android/modemservice/CPPhoneProperties;->LOG_TAG:Ljava/lang/String;

    const-string v2, " cpphoneproperties  mSystemDefineOperatorType != mOperatorsMode status error!!!! "

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    sput v0, Lcom/yulong/android/modemservice/CPPhoneProperties;->mSystemDefineOperatorType:I

    goto/16 :goto_0
.end method

.method public static isActiveDefaultOn()Z
    .locals 3

    .prologue
    .line 1063
    sget-object v1, Lcom/yulong/android/modemservice/CPPhoneProperties;->xmlManager:Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    if-nez v1, :cond_0

    .line 1064
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->loadXmlFileToMem()V

    .line 1066
    :cond_0
    const/4 v0, 0x0

    .line 1067
    .local v0, "activeTag":Ljava/lang/String;
    sget-object v1, Lcom/yulong/android/modemservice/CPPhoneProperties;->xmlManager:Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    const-string v2, "active_default_tag"

    invoke-virtual {v1, v2}, Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;->getAttribute1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1068
    if-eqz v0, :cond_1

    .line 1069
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sget v2, Lcom/yulong/android/modemservice/CPPhoneProperties;->ACTIVE_DEFAUTL_OFF:I

    if-ne v1, v2, :cond_1

    .line 1070
    const/4 v1, 0x0

    .line 1073
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isCFCCAllowedOverLTE()Z
    .locals 3

    .prologue
    .line 1383
    sget-object v1, Lcom/yulong/android/modemservice/CPPhoneProperties;->xmlManager:Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->isXmlFileReloaded()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1384
    :cond_0
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->loadXmlFileToMem()V

    .line 1386
    :cond_1
    sget-object v1, Lcom/yulong/android/modemservice/CPPhoneProperties;->xmlManager:Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    const-string v2, "csfb_boot_cfcc_enabled"

    invoke-virtual {v1, v2}, Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;->getAttribute1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1387
    .local v0, "lteCallForwardSupport":Ljava/lang/String;
    if-eqz v0, :cond_2

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1388
    const/4 v1, 0x1

    .line 1390
    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isCallIn()Z
    .locals 3

    .prologue
    .line 1077
    sget-object v1, Lcom/yulong/android/modemservice/CPPhoneProperties;->xmlManager:Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    if-nez v1, :cond_0

    .line 1078
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->loadXmlFileToMem()V

    .line 1080
    :cond_0
    const/4 v0, 0x0

    .line 1081
    .local v0, "SRLTE_CSFB":Ljava/lang/String;
    sget-object v1, Lcom/yulong/android/modemservice/CPPhoneProperties;->xmlManager:Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    const-string v2, "srlte_csfb_setting"

    invoke-virtual {v1, v2}, Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;->getAttribute1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1082
    if-eqz v0, :cond_1

    .line 1083
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sget v2, Lcom/yulong/android/modemservice/CPPhoneProperties;->SRLTE_CSFB_ON:I

    if-ne v1, v2, :cond_1

    .line 1084
    const/4 v1, 0x1

    .line 1087
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isCsfbEnable()Z
    .locals 3

    .prologue
    .line 1396
    sget-object v1, Lcom/yulong/android/modemservice/CPPhoneProperties;->xmlManager:Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->isXmlFileReloaded()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1397
    :cond_0
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->loadXmlFileToMem()V

    .line 1399
    :cond_1
    sget-object v1, Lcom/yulong/android/modemservice/CPPhoneProperties;->xmlManager:Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    const-string v2, "csfb_enabled"

    invoke-virtual {v1, v2}, Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;->getAttribute1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1400
    .local v0, "csfbenable":Ljava/lang/String;
    if-eqz v0, :cond_2

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1401
    const/4 v1, 0x1

    .line 1403
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

    .line 423
    sget-object v4, Lcom/yulong/android/modemservice/CPPhoneProperties;->xmlManager:Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->isXmlFileReloaded()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 424
    :cond_0
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->loadXmlFileToMem()V

    .line 426
    :cond_1
    sget-object v4, Lcom/yulong/android/modemservice/CPPhoneProperties;->xmlManager:Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    const-string v5, "dsds_enabled"

    invoke-virtual {v4, v5}, Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;->getAttribute1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 427
    .local v0, "commType":Ljava/lang/String;
    if-eqz v0, :cond_3

    const-string v4, "0"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v2, v3

    .line 436
    :cond_2
    :goto_0
    return v2

    .line 429
    :cond_3
    if-eqz v0, :cond_4

    const-string v4, "1"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 434
    :cond_4
    const-string v4, "yulong.radio.dsdx_type"

    const-string v5, "default_mode"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 435
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

    .line 436
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
    .line 805
    sget-object v1, Lcom/yulong/android/modemservice/CPPhoneProperties;->xmlManager:Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->isXmlFileReloaded()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 806
    :cond_0
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->loadXmlFileToMem()V

    .line 808
    :cond_1
    sget-object v1, Lcom/yulong/android/modemservice/CPPhoneProperties;->xmlManager:Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    const-string v2, "dualphone_call_support"

    invoke-virtual {v1, v2}, Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;->getAttribute1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 810
    .local v0, "dualPhoneCallSupport":Ljava/lang/String;
    if-eqz v0, :cond_2

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 812
    const/4 v1, 0x1

    .line 814
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

    .line 674
    sget-object v2, Lcom/yulong/android/modemservice/CPPhoneProperties;->xmlManager:Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->isXmlFileReloaded()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 675
    :cond_0
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->loadXmlFileToMem()V

    .line 677
    :cond_1
    sget-object v2, Lcom/yulong/android/modemservice/CPPhoneProperties;->xmlManager:Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    const-string v3, "fast_poweron_enabled"

    invoke-virtual {v2, v3}, Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;->getAttribute1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 678
    .local v0, "commType":Ljava/lang/String;
    if-eqz v0, :cond_2

    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 685
    :goto_0
    return v1

    .line 680
    :cond_2
    if-eqz v0, :cond_3

    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 681
    const/4 v1, 0x1

    goto :goto_0

    .line 684
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

    .line 445
    sget-object v2, Lcom/yulong/android/modemservice/CPPhoneProperties;->xmlManager:Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->isXmlFileReloaded()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 446
    :cond_0
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->loadXmlFileToMem()V

    .line 448
    :cond_1
    sget-object v2, Lcom/yulong/android/modemservice/CPPhoneProperties;->xmlManager:Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    const-string v3, "gsm_tune_away_enabled"

    invoke-virtual {v2, v3}, Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;->getAttribute1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 449
    .local v0, "commType":Ljava/lang/String;
    if-eqz v0, :cond_2

    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 457
    :goto_0
    return v1

    .line 451
    :cond_2
    if-eqz v0, :cond_3

    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 452
    const/4 v1, 0x1

    goto :goto_0

    .line 455
    :cond_3
    sget-object v2, Lcom/yulong/android/modemservice/CPPhoneProperties;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Something is wrong with getting feature: GsmTuneAwayEnabled"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static isHotSwapSupport()Z
    .locals 3

    .prologue
    .line 1090
    sget-object v1, Lcom/yulong/android/modemservice/CPPhoneProperties;->xmlManager:Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    if-nez v1, :cond_0

    .line 1091
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->loadXmlFileToMem()V

    .line 1093
    :cond_0
    const/4 v0, 0x0

    .line 1094
    .local v0, "HOT_SWAP":Ljava/lang/String;
    sget-object v1, Lcom/yulong/android/modemservice/CPPhoneProperties;->xmlManager:Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    const-string v2, "hot_swap_support"

    invoke-virtual {v1, v2}, Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;->getAttribute1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1095
    if-eqz v0, :cond_1

    .line 1096
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sget v2, Lcom/yulong/android/modemservice/CPPhoneProperties;->HOT_SWAP_ON:I

    if-ne v1, v2, :cond_1

    .line 1097
    const/4 v1, 0x1

    .line 1100
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isLTESwitchSupport()Z
    .locals 3

    .prologue
    .line 1370
    sget-object v1, Lcom/yulong/android/modemservice/CPPhoneProperties;->xmlManager:Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->isXmlFileReloaded()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1371
    :cond_0
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->loadXmlFileToMem()V

    .line 1373
    :cond_1
    sget-object v1, Lcom/yulong/android/modemservice/CPPhoneProperties;->xmlManager:Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    const-string v2, "lte_switch_support"

    invoke-virtual {v1, v2}, Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;->getAttribute1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1374
    .local v0, "lteSupportSwitch":Ljava/lang/String;
    if-eqz v0, :cond_2

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1375
    const/4 v1, 0x1

    .line 1377
    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isLteOnCdmaEnabled()Z
    .locals 3

    .prologue
    .line 1049
    sget-object v1, Lcom/yulong/android/modemservice/CPPhoneProperties;->xmlManager:Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    if-nez v1, :cond_0

    .line 1050
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->loadXmlFileToMem()V

    .line 1052
    :cond_0
    const/4 v0, 0x0

    .line 1053
    .local v0, "lteTag":Ljava/lang/String;
    sget-object v1, Lcom/yulong/android/modemservice/CPPhoneProperties;->xmlManager:Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    const-string v2, "lte_on_cdma_enabled"

    invoke-virtual {v1, v2}, Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;->getAttribute1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1054
    if-eqz v0, :cond_1

    .line 1055
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sget v2, Lcom/yulong/android/modemservice/CPPhoneProperties;->LTE_ON_CDMA_TRUE:I

    if-ne v1, v2, :cond_1

    .line 1056
    const/4 v1, 0x1

    .line 1059
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

    .line 756
    sget-object v3, Lcom/yulong/android/modemservice/CPPhoneProperties;->xmlManager:Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->isXmlFileReloaded()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 757
    :cond_0
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->loadXmlFileToMem()V

    .line 761
    :cond_1
    if-ne p0, v2, :cond_3

    .line 762
    sget-object v3, Lcom/yulong/android/modemservice/CPPhoneProperties;->xmlManager:Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    const-string v4, "multiple_pdp_enable_phone_one"

    invoke-virtual {v3, v4}, Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;->getAttribute1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 771
    .local v0, "configValue":Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_2

    const-string v3, "1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v1, v2

    .line 774
    .end local v0    # "configValue":Ljava/lang/String;
    :cond_2
    return v1

    .line 764
    :cond_3
    const/4 v3, 0x2

    if-ne p0, v3, :cond_2

    .line 765
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
    .line 666
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getOperatorType()I

    move-result v0

    .line 667
    .local v0, "operatorType":I
    const/16 v1, 0x64

    if-lt v0, v1, :cond_0

    .line 668
    const/4 v1, 0x1

    .line 670
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isRildDisconnectNotify()I
    .locals 3

    .prologue
    .line 1358
    sget-object v1, Lcom/yulong/android/modemservice/CPPhoneProperties;->xmlManager:Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->isXmlFileReloaded()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1359
    :cond_0
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->loadXmlFileToMem()V

    .line 1361
    :cond_1
    sget-object v1, Lcom/yulong/android/modemservice/CPPhoneProperties;->xmlManager:Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    const-string v2, "rild_disconnect_notify"

    invoke-virtual {v1, v2}, Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;->getAttribute1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1362
    .local v0, "commType":Ljava/lang/String;
    if-eqz v0, :cond_2

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1363
    const/4 v1, 0x1

    .line 1365
    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isSEDRegion()Z
    .locals 3

    .prologue
    .line 1354
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
    .line 900
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getCardSlotNum()I

    move-result v0

    .line 901
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

    .line 902
    return v0
.end method

.method public static isSupportAdnGroup(I)Z
    .locals 4
    .param p0, "phoneid"    # I

    .prologue
    const/4 v1, 0x1

    .line 877
    sget-object v2, Lcom/yulong/android/modemservice/CPPhoneProperties;->xmlManager:Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->isXmlFileReloaded()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 878
    :cond_0
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->loadXmlFileToMem()V

    .line 880
    :cond_1
    const/4 v0, 0x0

    .line 881
    .local v0, "bEnable":Ljava/lang/String;
    if-ne p0, v1, :cond_3

    .line 882
    sget-object v2, Lcom/yulong/android/modemservice/CPPhoneProperties;->xmlManager:Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    const-string v3, "adn_support_group_one"

    invoke-virtual {v2, v3}, Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;->getAttribute1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 886
    :goto_0
    if-eqz v0, :cond_5

    .line 887
    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 888
    const/4 v1, 0x0

    .line 896
    :cond_2
    :goto_1
    return v1

    .line 884
    :cond_3
    sget-object v2, Lcom/yulong/android/modemservice/CPPhoneProperties;->xmlManager:Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    const-string v3, "adn_support_group_two"

    invoke-virtual {v2, v3}, Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;->getAttribute1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 889
    :cond_4
    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    .line 893
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

    .line 690
    sget-object v2, Lcom/yulong/android/modemservice/CPPhoneProperties;->xmlManager:Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->isXmlFileReloaded()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 691
    :cond_0
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->loadXmlFileToMem()V

    .line 693
    :cond_1
    sget-object v2, Lcom/yulong/android/modemservice/CPPhoneProperties;->xmlManager:Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    const-string v3, "switch_card_enabled"

    invoke-virtual {v2, v3}, Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;->getAttribute1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 694
    .local v0, "commType":Ljava/lang/String;
    if-eqz v0, :cond_2

    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 702
    :goto_0
    return v1

    .line 696
    :cond_2
    if-eqz v0, :cond_3

    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 697
    const/4 v1, 0x1

    goto :goto_0

    .line 700
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
    .line 960
    sget-object v4, Lcom/yulong/android/modemservice/CPPhoneProperties;->xmlManager:Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->isXmlFileReloaded()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 961
    :cond_0
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->loadXmlFileToMem()V

    .line 963
    :cond_1
    const/4 v2, 0x0

    .line 964
    .local v2, "ret":Z
    const/4 v3, 0x0

    .line 965
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

    .line 966
    sget-object v4, Lcom/yulong/android/modemservice/CPPhoneProperties;->xmlManager:Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    const-string v5, "operate_fac_num_support"

    invoke-virtual {v4, v5}, Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;->getAttribute1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 968
    .local v0, "facnumSupport":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 969
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

    .line 970
    packed-switch p0, :pswitch_data_0

    .line 994
    :goto_0
    if-nez v3, :cond_2

    .line 995
    const/4 v2, 0x0

    .line 999
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

    .line 1000
    return v2

    .line 974
    :pswitch_0
    and-int/lit8 v3, v1, 0x1

    .line 975
    goto :goto_0

    .line 977
    :pswitch_1
    and-int/lit8 v3, v1, 0x2

    .line 978
    goto :goto_0

    .line 980
    :pswitch_2
    and-int/lit8 v3, v1, 0x4

    .line 981
    goto :goto_0

    .line 983
    :pswitch_3
    and-int/lit8 v3, v1, 0x8

    .line 984
    goto :goto_0

    .line 986
    :pswitch_4
    and-int/lit8 v3, v1, 0x10

    .line 987
    goto :goto_0

    .line 989
    :pswitch_5
    and-int/lit8 v3, v1, 0x20

    .line 990
    goto :goto_0

    .line 997
    :cond_2
    const/4 v2, 0x1

    goto :goto_1

    .line 970
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

    .line 1106
    const-string v4, "yulong.lcdsds.mode"

    invoke-static {v4, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1108
    .local v0, "lcDsdsMode":I
    const/4 v1, 0x0

    .line 1109
    .local v1, "newXmlFileType":I
    if-nez v0, :cond_0

    .line 1110
    const/4 v1, 0x0

    .line 1114
    :goto_0
    if-nez v0, :cond_1

    move v1, v2

    .line 1115
    :goto_1
    sget v4, Lcom/yulong/android/modemservice/CPPhoneProperties;->oldXmlFileType:I

    if-ne v1, v4, :cond_2

    .line 1120
    :goto_2
    return v2

    .line 1112
    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v3

    .line 1114
    goto :goto_1

    .line 1118
    :cond_2
    sget-object v2, Lcom/yulong/android/modemservice/CPPhoneProperties;->LOG_TAG:Ljava/lang/String;

    const-string v4, "isXmlFileReloaded true"

    invoke-static {v2, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1119
    sput v1, Lcom/yulong/android/modemservice/CPPhoneProperties;->oldXmlFileType:I

    move v2, v3

    .line 1120
    goto :goto_2
.end method

.method public static loadXmlFileToMem()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 244
    const-string v2, "yulong.lcdsds.mode"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 246
    .local v0, "lcDsdsMode":I
    const-string v2, "persist.yulong.operators.mode"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 248
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

    .line 249
    if-nez v0, :cond_4

    .line 250
    if-ne v5, v1, :cond_0

    .line 251
    new-instance v2, Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    const-string v3, "etc/comm-feature-all.xml"

    invoke-direct {v2, v3}, Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;-><init>(Ljava/lang/String;)V

    sput-object v2, Lcom/yulong/android/modemservice/CPPhoneProperties;->xmlManager:Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    .line 268
    :goto_0
    return-void

    .line 252
    :cond_0
    const/4 v2, 0x2

    if-ne v2, v1, :cond_1

    .line 253
    new-instance v2, Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    const-string v3, "etc/comm-feature-ct.xml"

    invoke-direct {v2, v3}, Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;-><init>(Ljava/lang/String;)V

    sput-object v2, Lcom/yulong/android/modemservice/CPPhoneProperties;->xmlManager:Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    goto :goto_0

    .line 254
    :cond_1
    const/4 v2, 0x3

    if-ne v2, v1, :cond_2

    .line 255
    new-instance v2, Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    const-string v3, "etc/comm-feature-cm.xml"

    invoke-direct {v2, v3}, Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;-><init>(Ljava/lang/String;)V

    sput-object v2, Lcom/yulong/android/modemservice/CPPhoneProperties;->xmlManager:Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    goto :goto_0

    .line 256
    :cond_2
    const/4 v2, 0x4

    if-ne v2, v1, :cond_3

    .line 257
    new-instance v2, Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    const-string v3, "etc/comm-feature-cu.xml"

    invoke-direct {v2, v3}, Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;-><init>(Ljava/lang/String;)V

    sput-object v2, Lcom/yulong/android/modemservice/CPPhoneProperties;->xmlManager:Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    goto :goto_0

    .line 259
    :cond_3
    new-instance v2, Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    const-string v3, "etc/comm-feature.xml"

    invoke-direct {v2, v3}, Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;-><init>(Ljava/lang/String;)V

    sput-object v2, Lcom/yulong/android/modemservice/CPPhoneProperties;->xmlManager:Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    goto :goto_0

    .line 262
    :cond_4
    if-ne v5, v1, :cond_5

    .line 263
    new-instance v2, Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    const-string v3, "etc/dsds-feature-all.xml"

    invoke-direct {v2, v3}, Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;-><init>(Ljava/lang/String;)V

    sput-object v2, Lcom/yulong/android/modemservice/CPPhoneProperties;->xmlManager:Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    goto :goto_0

    .line 265
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

    .line 271
    const-string v1, "persist.yulong.operators.mode"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 273
    .local v0, "mOperatorsMode":I
    if-ne p0, v3, :cond_1

    .line 274
    sput-boolean v3, Lcom/yulong/android/modemservice/CPPhoneProperties;->isLcDsdsType:Z

    .line 275
    const-string v1, "yulong.lcdsds.mode"

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    if-ne v3, v0, :cond_0

    .line 278
    new-instance v1, Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    const-string v2, "etc/dsds-feature-all.xml"

    invoke-direct {v1, v2}, Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/yulong/android/modemservice/CPPhoneProperties;->xmlManager:Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    .line 298
    :goto_0
    return-void

    .line 280
    :cond_0
    new-instance v1, Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    const-string v2, "etc/dsds-feature.xml"

    invoke-direct {v1, v2}, Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/yulong/android/modemservice/CPPhoneProperties;->xmlManager:Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    goto :goto_0

    .line 283
    :cond_1
    sput-boolean v2, Lcom/yulong/android/modemservice/CPPhoneProperties;->isLcDsdsType:Z

    .line 284
    const-string v1, "yulong.lcdsds.mode"

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    if-ne v3, v0, :cond_2

    .line 287
    new-instance v1, Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    const-string v2, "etc/comm-feature-all.xml"

    invoke-direct {v1, v2}, Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/yulong/android/modemservice/CPPhoneProperties;->xmlManager:Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    goto :goto_0

    .line 288
    :cond_2
    const/4 v1, 0x2

    if-ne v1, v0, :cond_3

    .line 289
    new-instance v1, Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    const-string v2, "etc/comm-feature-ct.xml"

    invoke-direct {v1, v2}, Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/yulong/android/modemservice/CPPhoneProperties;->xmlManager:Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    goto :goto_0

    .line 290
    :cond_3
    const/4 v1, 0x3

    if-ne v1, v0, :cond_4

    .line 291
    new-instance v1, Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    const-string v2, "etc/comm-feature-cm.xml"

    invoke-direct {v1, v2}, Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/yulong/android/modemservice/CPPhoneProperties;->xmlManager:Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    goto :goto_0

    .line 292
    :cond_4
    const/4 v1, 0x4

    if-ne v1, v0, :cond_5

    .line 293
    new-instance v1, Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    const-string v2, "etc/comm-feature-cu.xml"

    invoke-direct {v1, v2}, Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/yulong/android/modemservice/CPPhoneProperties;->xmlManager:Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    goto :goto_0

    .line 295
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
    .line 1020
    sget-object v1, Lcom/yulong/android/modemservice/CPPhoneProperties;->xmlManager:Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    if-nez v1, :cond_0

    .line 1021
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->loadXmlFileToMem()V

    .line 1023
    :cond_0
    const/4 v0, 0x0

    .line 1024
    .local v0, "smoothTag":Ljava/lang/String;
    sget-object v1, Lcom/yulong/android/modemservice/CPPhoneProperties;->xmlManager:Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    const-string v2, "signal_show_smoothly"

    invoke-virtual {v1, v2}, Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;->getAttribute1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1025
    if-eqz v0, :cond_1

    .line 1026
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sget v2, Lcom/yulong/android/modemservice/CPPhoneProperties;->SIGNAL_SHOW_SMOOTHLY_NOT_SUPPORT:I

    if-ne v1, v2, :cond_1

    .line 1027
    const/4 v1, 0x0

    .line 1030
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static signalUpdateDelayTimer()I
    .locals 3

    .prologue
    .line 1035
    sget-object v1, Lcom/yulong/android/modemservice/CPPhoneProperties;->xmlManager:Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    if-nez v1, :cond_0

    .line 1036
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->loadXmlFileToMem()V

    .line 1038
    :cond_0
    const/4 v0, 0x0

    .line 1039
    .local v0, "delayTimer":Ljava/lang/String;
    sget-object v1, Lcom/yulong/android/modemservice/CPPhoneProperties;->xmlManager:Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;

    const-string v2, "signal_update_delay_timer"

    invoke-virtual {v1, v2}, Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;->getAttribute1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1040
    if-eqz v0, :cond_1

    .line 1041
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1043
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
