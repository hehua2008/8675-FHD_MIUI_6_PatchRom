.class public Lcom/yulong/android/telephony/CPSprintReqManager;
.super Ljava/lang/Object;
.source "CPSprintReqManager.java"


# static fields
.field public static final DOM_DATA_GUARD_ENABLED:Ljava/lang/String; = "dom_data_guard_enabled"

.field public static final DOM_DATA_GUARD_FORCED:Ljava/lang/String; = "dom_data_guard_forced"

.field public static final DOM_DATA_ROAMING_ENABLED:Ljava/lang/String; = "dom_data_roaming_enabled"

.field public static final DOM_DATA_ROAMING_FORCED:Ljava/lang/String; = "dom_data_roaming_forced"

.field public static final DOM_VOICE_GUARD_ENABLED:Ljava/lang/String; = "dom_voice_guard_enabled"

.field public static final DOM_VOICE_GUARD_FORCED:Ljava/lang/String; = "dom_voice_guard_forced"

.field public static final DOM_VOICE_ROAMING_ENABLED:Ljava/lang/String; = "dom_voice_roaming_enabled"

.field public static final DOM_VOICE_ROAMING_FORCED:Ljava/lang/String; = "dom_voice_roaming_forced"

.field static EMPTYSTR:Ljava/lang/String; = null

.field public static final GET_HIDDEN_MENU_VALUE_1X_ENGINEERING:I = 0x65

.field public static final GET_HIDDEN_MENU_VALUE_AN_PPP_NAI:I = 0x191

.field public static final GET_HIDDEN_MENU_VALUE_BSR_TIMER:I = 0x6b

.field public static final GET_HIDDEN_MENU_VALUE_CONFIGURATION:I = 0x67

.field public static final GET_HIDDEN_MENU_VALUE_DATA_ADVANCED:I = 0xcb

.field public static final GET_HIDDEN_MENU_VALUE_DATA_PROFILE:I = 0xc9

.field public static final GET_HIDDEN_MENU_VALUE_EHRPD_ENGINEERING:I = 0x69

.field public static final GET_HIDDEN_MENU_VALUE_EVDO_DDTM_ENABLED:I = 0xca

.field public static final GET_HIDDEN_MENU_VALUE_EVDO_ENGINEERING:I = 0x66

.field public static final GET_HIDDEN_MENU_VALUE_LAST_ERROR_CODE:I = 0x6c

.field public static final GET_HIDDEN_MENU_VALUE_LTE_EHRPD_ENABLED:I = 0xcc

.field public static final GET_HIDDEN_MENU_VALUE_LTE_ENGINEERING:I = 0x68

.field public static final GET_HIDDEN_MENU_VALUE_RATE_REDUCE:I = 0xcd

.field public static final GET_HIDDEN_MENU_VALUE_TEST:I = 0x12d

.field public static final GET_HIDDEN_MENU_VALUE_UICCID:I = 0x6a

.field public static final INTL_DATA_GUARD_ENABLE:Ljava/lang/String; = "intl_data_guard_enabled"

.field public static final INTL_DATA_GUARD_FORCED:Ljava/lang/String; = "intl_data_guard_forced"

.field public static final INTL_DATA_ROAMING_ENABLED:Ljava/lang/String; = "intl_data_roaming_enabled"

.field public static final INTL_DATA_ROAMING_FORCED:Ljava/lang/String; = "intl_data_roaming_forced"

.field public static final INTL_DIALING_ENABLED:Ljava/lang/String; = "intl_dialing_enabled"

.field public static final INTL_DIALING_FORCED:Ljava/lang/String; = "intl_dialing_forced"

.field public static final INTL_OUTGOING_SMS_GUARD_ENABLED:Ljava/lang/String; = "intl_outgoing_sms_guard_enabled"

.field public static final INTL_VOICE_GUARD_ENABLED:Ljava/lang/String; = "intl_voice_guard_enabled"

.field public static final INTL_VOICE_GUARD_FORCED:Ljava/lang/String; = "intl_voice_guard_forced"

.field public static final INTL_VOICE_ROAMING_ENABLED:Ljava/lang/String; = "intl_voice_roaming_enabled"

.field public static final INTL_VOICE_ROAMING_FORCED:Ljava/lang/String; = "intl_voice_roaming_forced"

.field private static final INT_SIZE:I = 0x4

.field public static final LTE_SERVICE_FORCED:Ljava/lang/String; = "lte_service_forced"

.field public static final NV_DIR_NUMBER_I:I = 0xb2

.field public static final NV_HOME_SID_NID_I:I = 0x103

.field public static final NV_IMSI_MCC:I = 0xb0

.field public static final NV_IMSI_MNC:I = 0xb1

.field public static final NV_MIN1_I:I = 0x20

.field public static final NV_MIN2_I:I = 0x21

.field public static final QCRIL_EVT_HOOK_1XADVANCE_ENABLED_READ:I = 0x90011

.field public static final QCRIL_EVT_HOOK_1XADVANCE_ENABLED_WRITE:I = 0x90012

.field public static final QCRIL_EVT_HOOK_ACCOLC_NUMBER_READ:I = 0x90019

.field public static final QCRIL_EVT_HOOK_ACCOLC_NUMBER_WRITE:I = 0x9001a

.field public static final QCRIL_EVT_HOOK_BASE:I = 0x80000

.field public static final QCRIL_EVT_HOOK_BC10_ENABLED_READ:I = 0x9001d

.field public static final QCRIL_EVT_HOOK_BC10_ENABLED_WRITE:I = 0x9001e

.field public static final QCRIL_EVT_HOOK_COP0_ENABLED_READ:I = 0x9000f

.field public static final QCRIL_EVT_HOOK_COP0_ENABLED_WRITE:I = 0x90010

.field public static final QCRIL_EVT_HOOK_EHRPD_ENABLED_READ:I = 0x90009

.field public static final QCRIL_EVT_HOOK_EHRPD_ENABLED_WRITE:I = 0x9000a

.field public static final QCRIL_EVT_HOOK_GET_NAM_PARAMETER:I = 0x90001

.field public static final QCRIL_EVT_HOOK_LTE_BSR_MAX_TIMER_READ:I = 0x90017

.field public static final QCRIL_EVT_HOOK_LTE_BSR_MAX_TIMER_WRITE:I = 0x90018

.field public static final QCRIL_EVT_HOOK_LTE_BSR_TIMER_READ:I = 0x90015

.field public static final QCRIL_EVT_HOOK_LTE_BSR_TIMER_WRITE:I = 0x90016

.field public static final QCRIL_EVT_HOOK_LTE_ENABLED_READ:I = 0x90007

.field public static final QCRIL_EVT_HOOK_LTE_ENABLED_WRITE:I = 0x90008

.field public static final QCRIL_EVT_HOOK_LTE_NEXT_SCAN_TIMER_READ:I = 0x90013

.field public static final QCRIL_EVT_HOOK_LTE_NEXT_SCAN_TIMER_WRITE:I = 0x90014

.field public static final QCRIL_EVT_HOOK_NV_READ:I = 0x80001

.field public static final QCRIL_EVT_HOOK_NV_WRITE:I = 0x80002

.field public static final QCRIL_EVT_HOOK_OTKSL_NUMBER_READ:I = 0x9001b

.field public static final QCRIL_EVT_HOOK_READ_LTE_BC_CONFIG:I = 0x90005

.field public static final QCRIL_EVT_HOOK_SET_MOBILE_IP:I = 0x90003

.field public static final QCRIL_EVT_HOOK_SET_SMS_CHANNEL:I = 0x90002

.field public static final QCRIL_EVT_HOOK_SET_VOICE_RRIV:I = 0x90004

.field public static final QCRIL_EVT_HOOK_SO68_ENABLED_READ:I = 0x9000b

.field public static final QCRIL_EVT_HOOK_SO68_ENABLED_WRITE:I = 0x9000c

.field public static final QCRIL_EVT_HOOK_SO73_ENABLED_READ:I = 0x9000d

.field public static final QCRIL_EVT_HOOK_SO73_ENABLED_WRITE:I = 0x9000e

.field public static final QCRIL_EVT_HOOK_SPC_NUMBER_READ:I = 0x9001c

.field public static final QCRIL_EVT_HOOK_UICCID_NUMBER_READ:I = 0x90006

.field public static final QCRIL_EVT_OEM_BASE:I = 0x90000

.field private static final RESPONSE_BUFFER_SIZE:I = 0x800

.field public static final ROAMING_MODE_DOMESTIC:I = 0x1

.field public static final ROAMING_MODE_HOME:I = 0x0

.field public static final ROAMING_MODE_INTERNATIONAL:I = 0x2

.field public static final ROAMING_UI_DISPLAYED:Ljava/lang/String; = "roaming_ui_displayed"

.field public static final SET_HIDDEN_MENU_VALUE_1X_ADVANCE:I = 0x83

.field public static final SET_HIDDEN_MENU_VALUE_1X_DIVERSITY_ENABLED:I = 0x65

.field public static final SET_HIDDEN_MENU_VALUE_DATA_ADVANCED_BSR_MAX_TIMER:I = 0x7d

.field public static final SET_HIDDEN_MENU_VALUE_DATA_ADVANCED_BSR_TIMER:I = 0x7c

.field public static final SET_HIDDEN_MENU_VALUE_DATA_ADVANCED_EVRC_B_ENABLE:I = 0x76

.field public static final SET_HIDDEN_MENU_VALUE_DATA_ADVANCED_HOME_NID:I = 0x77

.field public static final SET_HIDDEN_MENU_VALUE_DATA_ADVANCED_HOME_ORIG_VOCODER:I = 0x73

.field public static final SET_HIDDEN_MENU_VALUE_DATA_ADVANCED_HOME_PAGE_VOCODER:I = 0x74

.field public static final SET_HIDDEN_MENU_VALUE_DATA_ADVANCED_HOME_SID:I = 0x78

.field public static final SET_HIDDEN_MENU_VALUE_DATA_ADVANCED_MCC:I = 0x79

.field public static final SET_HIDDEN_MENU_VALUE_DATA_ADVANCED_MNC:I = 0x7a

.field public static final SET_HIDDEN_MENU_VALUE_DATA_ADVANCED_NEXT_LTE_SCAN:I = 0x7b

.field public static final SET_HIDDEN_MENU_VALUE_DATA_ADVANCED_ROAM_PAGE_VOCODER:I = 0x75

.field public static final SET_HIDDEN_MENU_VALUE_DATA_EHRPD_ENABLED:I = 0x7f

.field public static final SET_HIDDEN_MENU_VALUE_DATA_LOCK_CODE:I = 0x80

.field public static final SET_HIDDEN_MENU_VALUE_DATA_LTE_ENABLED:I = 0x7e

.field public static final SET_HIDDEN_MENU_VALUE_DATA_PROFILE_AAA_PASSWORD:I = 0x6e

.field public static final SET_HIDDEN_MENU_VALUE_DATA_PROFILE_AAA_SPI:I = 0x6d

.field public static final SET_HIDDEN_MENU_VALUE_DATA_PROFILE_DEVICE_IP:I = 0x6f

.field public static final SET_HIDDEN_MENU_VALUE_DATA_PROFILE_HA_PASSWORD:I = 0x6c

.field public static final SET_HIDDEN_MENU_VALUE_DATA_PROFILE_HA_SPI:I = 0x6b

.field public static final SET_HIDDEN_MENU_VALUE_DATA_PROFILE_PRIMARY_HA_IP:I = 0x70

.field public static final SET_HIDDEN_MENU_VALUE_DATA_PROFILE_REV_TUNNELING:I = 0x6a

.field public static final SET_HIDDEN_MENU_VALUE_DATA_PROFILE_SECONDARY_HA_IP:I = 0x71

.field public static final SET_HIDDEN_MENU_VALUE_DATA_PROFILE_USERNAME:I = 0x69

.field public static final SET_HIDDEN_MENU_VALUE_DATA_SET_BC10:I = 0x84

.field public static final SET_HIDDEN_MENU_VALUE_EVDO_DDTM_ENABLE:I = 0x72

.field public static final SET_HIDDEN_MENU_VALUE_EVDO_DIVERSITY_ENABLED:I = 0x66

.field public static final SET_HIDDEN_MENU_VALUE_EVRC_B_ENABLED:I = 0x68

.field public static final SET_HIDDEN_MENU_VALUE_MRD_MODE:I = 0x67

.field public static final SET_HIDDEN_MENU_VALUE_SO73_COP0:I = 0x81

.field public static final SET_HIDDEN_MENU_VALUE_SO73_COP1:I = 0x82

.field static SUCCESS:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "CPSprintReqManager"

.field private static final mHeaderSize:I

.field private static final mOemIdentifier:Ljava/lang/String; = "QUALCOMM"

.field private static sInstance:Lcom/yulong/android/telephony/CPSprintReqManager;


# instance fields
.field private final mLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-string v0, "success"

    sput-object v0, Lcom/yulong/android/telephony/CPSprintReqManager;->SUCCESS:Ljava/lang/String;

    .line 28
    const-string v0, ""

    sput-object v0, Lcom/yulong/android/telephony/CPSprintReqManager;->EMPTYSTR:Ljava/lang/String;

    .line 37
    const-string v0, "QUALCOMM"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x8

    sput v0, Lcom/yulong/android/telephony/CPSprintReqManager;->mHeaderSize:I

    .line 40
    new-instance v0, Lcom/yulong/android/telephony/CPSprintReqManager;

    invoke-direct {v0}, Lcom/yulong/android/telephony/CPSprintReqManager;-><init>()V

    sput-object v0, Lcom/yulong/android/telephony/CPSprintReqManager;->sInstance:Lcom/yulong/android/telephony/CPSprintReqManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/yulong/android/telephony/CPSprintReqManager;->mLock:Ljava/lang/Object;

    return-void
.end method

.method private static addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V
    .locals 1
    .param p0, "buf"    # Ljava/nio/ByteBuffer;
    .param p1, "requestId"    # I
    .param p2, "requestSize"    # I

    .prologue
    .line 543
    const-string v0, "QUALCOMM"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 546
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 549
    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 550
    return-void
.end method

.method public static ascallByteToString([BII)Ljava/lang/String;
    .locals 5
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .prologue
    .line 594
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 595
    .local v2, "ret":Ljava/lang/StringBuilder;
    move v1, p1

    .local v1, "i":I
    :goto_0
    add-int v3, p1, p2

    if-ge v1, v3, :cond_1

    .line 596
    aget-byte v3, p0, v1

    and-int/lit16 v3, v3, 0xff

    if-ltz v3, :cond_0

    aget-byte v3, p0, v1

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x80

    if-ge v3, v4, :cond_0

    .line 597
    aget-byte v3, p0, v1

    and-int/lit16 v3, v3, 0xff

    int-to-char v0, v3

    .line 598
    .local v0, "c":C
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 595
    .end local v0    # "c":C
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 601
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static byte16ToInt([B)I
    .locals 5
    .param p0, "b"    # [B

    .prologue
    .line 583
    const/4 v0, 0x0

    .line 584
    .local v0, "s":I
    if-eqz p0, :cond_0

    array-length v3, p0

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 585
    const/4 v3, 0x0

    aget-byte v3, p0, v3

    and-int/lit16 v1, v3, 0xff

    .line 586
    .local v1, "s0":I
    const/4 v3, 0x1

    aget-byte v3, p0, v3

    and-int/lit16 v2, v3, 0xff

    .line 587
    .local v2, "s1":I
    shl-int/lit8 v2, v2, 0x8

    .line 588
    or-int v0, v1, v2

    .line 590
    .end local v1    # "s0":I
    .end local v2    # "s1":I
    :cond_0
    return v0
.end method

.method public static byte32ToInt([B)I
    .locals 7
    .param p0, "b"    # [B

    .prologue
    .line 567
    const/4 v0, 0x0

    .line 568
    .local v0, "s":I
    if-eqz p0, :cond_0

    array-length v5, p0

    const/4 v6, 0x4

    if-ne v5, v6, :cond_0

    .line 569
    const/4 v5, 0x0

    aget-byte v5, p0, v5

    and-int/lit16 v1, v5, 0xff

    .line 570
    .local v1, "s0":I
    const/4 v5, 0x1

    aget-byte v5, p0, v5

    and-int/lit16 v2, v5, 0xff

    .line 571
    .local v2, "s1":I
    const/4 v5, 0x2

    aget-byte v5, p0, v5

    and-int/lit16 v3, v5, 0xff

    .line 572
    .local v3, "s2":I
    const/4 v5, 0x3

    aget-byte v5, p0, v5

    and-int/lit16 v4, v5, 0xff

    .line 573
    .local v4, "s3":I
    shl-int/lit8 v2, v2, 0x8

    .line 574
    shl-int/lit8 v3, v3, 0x10

    .line 575
    shl-int/lit8 v4, v4, 0x18

    .line 576
    or-int v5, v1, v2

    or-int/2addr v5, v3

    or-int v0, v5, v4

    .line 578
    .end local v1    # "s0":I
    .end local v2    # "s1":I
    .end local v3    # "s2":I
    .end local v4    # "s3":I
    :cond_0
    return v0
.end method

.method public static createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;
    .locals 2
    .param p0, "bytes"    # [B

    .prologue
    .line 560
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 561
    .local v0, "buf":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 562
    return-object v0
.end method

.method public static getDefault()Lcom/yulong/android/telephony/CPSprintReqManager;
    .locals 1

    .prologue
    .line 182
    sget-object v0, Lcom/yulong/android/telephony/CPSprintReqManager;->sInstance:Lcom/yulong/android/telephony/CPSprintReqManager;

    return-object v0
.end method

.method private getITelephony()Lcom/android/internal/telephony/ITelephony;
    .locals 1

    .prologue
    .line 186
    const-string v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    return-object v0
.end method

.method private getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;
    .locals 1

    .prologue
    .line 192
    const-string v0, "iphonesubinfo"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v0

    return-object v0
.end method

.method private sendRilOemHookMsg(I[B)Landroid/os/AsyncResult;
    .locals 10
    .param p1, "requestId"    # I
    .param p2, "request"    # [B

    .prologue
    const/4 v9, 0x0

    .line 488
    const/16 v6, 0x800

    new-array v3, v6, [B

    .line 490
    .local v3, "response":[B
    const-string v6, "CPSprintReqManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sendQcRilOemHookMsg: Outgoing Data is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p2}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPSprintReqManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v6

    invoke-interface {v6, p2, v3}, Lcom/android/internal/telephony/ITelephony;->sendOemRilRequestRaw([B[B)I

    move-result v4

    .line 495
    .local v4, "retVal":I
    const-string v6, "CPSprintReqManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "retVal = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    if-ltz v4, :cond_1

    .line 497
    const/4 v5, 0x0

    .line 499
    .local v5, "validResponseBytes":[B
    if-lez v4, :cond_0

    .line 500
    new-array v5, v4, [B

    .line 501
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v3, v6, v5, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 503
    :cond_0
    const-string v6, "CPSprintReqManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "validResponseBytes = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v5}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    new-instance v0, Landroid/os/AsyncResult;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {v0, v6, v5, v7}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 523
    .end local v4    # "retVal":I
    .end local v5    # "validResponseBytes":[B
    .local v0, "ar":Landroid/os/AsyncResult;
    :goto_0
    return-object v0

    .line 511
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .restart local v4    # "retVal":I
    :cond_1
    mul-int/lit8 v6, v4, -0x1

    invoke-static {v6}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v2

    .line 513
    .local v2, "ex":Lcom/android/internal/telephony/CommandException;
    new-instance v0, Landroid/os/AsyncResult;

    const/4 v6, 0x0

    invoke-direct {v0, p2, v6, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v0    # "ar":Landroid/os/AsyncResult;
    goto :goto_0

    .line 515
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v2    # "ex":Lcom/android/internal/telephony/CommandException;
    .end local v4    # "retVal":I
    :catch_0
    move-exception v1

    .line 517
    .local v1, "e":Landroid/os/RemoteException;
    const-string v6, "CPSprintReqManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sendQcRilOemHook RequestID = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " exception, unable to send RIL request from this application"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 520
    new-instance v0, Landroid/os/AsyncResult;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v0, v6, v9, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .restart local v0    # "ar":Landroid/os/AsyncResult;
    goto :goto_0
.end method


# virtual methods
.method public clearLteAvailableFile(I)Z
    .locals 6
    .param p1, "phoneId"    # I

    .prologue
    .line 885
    const/4 v3, 0x0

    .line 886
    .local v3, "ret":Z
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 887
    .local v1, "inData":Landroid/os/Bundle;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 888
    .local v2, "outData":Landroid/os/Bundle;
    const-string v4, "rilIoControl_ex"

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 890
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPSprintReqManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v4

    const/16 v5, 0xb4

    invoke-interface {v4, v5, v1, v2, p1}, Lcom/android/internal/telephony/ITelephony;->telephonyDualIoControl(ILandroid/os/Bundle;Landroid/os/Bundle;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 895
    :goto_0
    return v3

    .line 891
    :catch_0
    move-exception v0

    .line 893
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public declared-synchronized getHiddenMenuValue(II)[Ljava/lang/String;
    .locals 8
    .param p1, "subRequest"    # I
    .param p2, "phoneId"    # I

    .prologue
    .line 713
    monitor-enter p0

    :try_start_0
    const-string v5, "CPSprintReqManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getHiddenMenuValue subRequest"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    const/4 v4, 0x0

    .line 715
    .local v4, "strs":[Ljava/lang/String;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 716
    .local v3, "reply":Landroid/os/Bundle;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 717
    .local v1, "inData":Landroid/os/Bundle;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 718
    .local v2, "outData":Landroid/os/Bundle;
    const-string v5, "rilIoControl_ex"

    const/4 v6, 0x1

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 719
    const-string v5, "subRequest"

    invoke-virtual {v1, v5, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 721
    :try_start_1
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPSprintReqManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v5

    const/16 v6, 0x94

    invoke-interface {v5, v6, v1, v2, p2}, Lcom/android/internal/telephony/ITelephony;->telephonyDualIoControl(ILandroid/os/Bundle;Landroid/os/Bundle;I)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 726
    :goto_0
    :try_start_2
    const-string v5, "reply_bundle"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 727
    if-eqz v3, :cond_0

    .line 728
    const-string v5, "hiddenMenuValue"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v4

    .line 730
    :cond_0
    monitor-exit p0

    return-object v4

    .line 722
    :catch_0
    move-exception v0

    .line 724
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_3
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 713
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "inData":Landroid/os/Bundle;
    .end local v2    # "outData":Landroid/os/Bundle;
    .end local v3    # "reply":Landroid/os/Bundle;
    .end local v4    # "strs":[Ljava/lang/String;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public getNvParam(II)Landroid/os/AsyncResult;
    .locals 3
    .param p1, "requestId"    # I
    .param p2, "nvItemId"    # I

    .prologue
    .line 364
    sget v2, Lcom/yulong/android/telephony/CPSprintReqManager;->mHeaderSize:I

    add-int/lit8 v2, v2, 0x4

    new-array v1, v2, [B

    .line 365
    .local v1, "request":[B
    invoke-static {v1}, Lcom/yulong/android/telephony/CPSprintReqManager;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 366
    .local v0, "reqBuffer":Ljava/nio/ByteBuffer;
    if-nez v0, :cond_0

    .line 367
    const/4 v2, 0x0

    .line 372
    :goto_0
    return-object v2

    .line 369
    :cond_0
    const/4 v2, 0x4

    invoke-static {v0, p1, v2}, Lcom/yulong/android/telephony/CPSprintReqManager;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 370
    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 372
    invoke-direct {p0, p1, v1}, Lcom/yulong/android/telephony/CPSprintReqManager;->sendRilOemHookMsg(I[B)Landroid/os/AsyncResult;

    move-result-object v2

    goto :goto_0
.end method

.method public getOneTimeSubsidyLock()Ljava/lang/String;
    .locals 4

    .prologue
    .line 844
    const/4 v1, 0x0

    .line 846
    .local v1, "tmp":Ljava/lang/String;
    const v2, 0x9001b

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0, v2, v3}, Lcom/yulong/android/telephony/CPSprintReqManager;->oemHookOmaRead(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 851
    :goto_0
    return-object v1

    .line 847
    :catch_0
    move-exception v0

    .line 848
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    .line 849
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getPreferredNetworkType(I)I
    .locals 6
    .param p1, "phoneId"    # I

    .prologue
    .line 946
    const/4 v2, 0x0

    .line 947
    .local v2, "networkstate":I
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 948
    .local v1, "inData":Landroid/os/Bundle;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 950
    .local v3, "outData":Landroid/os/Bundle;
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPSprintReqManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v4

    const/16 v5, 0x19

    invoke-interface {v4, v5, v1, v3, p1}, Lcom/android/internal/telephony/ITelephony;->telephonyDualIoControl(ILandroid/os/Bundle;Landroid/os/Bundle;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 956
    :goto_0
    const-string v4, "getnetwork"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 957
    return v2

    .line 952
    :catch_0
    move-exception v0

    .line 954
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getRoamingMode(I)I
    .locals 6
    .param p1, "phoneId"    # I

    .prologue
    .line 787
    const/4 v3, -0x1

    .line 788
    .local v3, "roamingMode":I
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 789
    .local v1, "inData":Landroid/os/Bundle;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 790
    .local v2, "outData":Landroid/os/Bundle;
    const-string v4, "rilIoControl_ex"

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 792
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPSprintReqManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v4

    const/16 v5, 0xaf

    invoke-interface {v4, v5, v1, v2, p1}, Lcom/android/internal/telephony/ITelephony;->telephonyDualIoControl(ILandroid/os/Bundle;Landroid/os/Bundle;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 797
    :goto_0
    const-string v4, "roamingMode"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 798
    return v3

    .line 793
    :catch_0
    move-exception v0

    .line 795
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getServiceProgrammingCode()Ljava/lang/String;
    .locals 4

    .prologue
    .line 833
    const/4 v1, 0x0

    .line 835
    .local v1, "tmp":Ljava/lang/String;
    const v2, 0x9001c

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0, v2, v3}, Lcom/yulong/android/telephony/CPSprintReqManager;->oemHookOmaRead(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 840
    :goto_0
    return-object v1

    .line 836
    :catch_0
    move-exception v0

    .line 837
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    .line 838
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public declared-synchronized getSettingsParamValue(Ljava/lang/String;I)I
    .locals 7
    .param p1, "param"    # Ljava/lang/String;
    .param p2, "phoneId"    # I

    .prologue
    .line 750
    monitor-enter p0

    :try_start_0
    const-string v4, "CPSprintReqManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getSettingsParamValue param"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    const/4 v3, -0x1

    .line 752
    .local v3, "value":I
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 753
    .local v1, "inData":Landroid/os/Bundle;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 754
    .local v2, "outData":Landroid/os/Bundle;
    const-string v4, "rilIoControl_ex"

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 755
    const-string v4, "param"

    invoke-virtual {v1, v4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 757
    :try_start_1
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPSprintReqManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v4

    const/16 v5, 0x9d

    invoke-interface {v4, v5, v1, v2, p2}, Lcom/android/internal/telephony/ITelephony;->telephonyDualIoControl(ILandroid/os/Bundle;Landroid/os/Bundle;I)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 762
    :goto_0
    :try_start_2
    const-string v4, "value"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v3

    .line 763
    monitor-exit p0

    return v3

    .line 758
    :catch_0
    move-exception v0

    .line 760
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_3
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 750
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "inData":Landroid/os/Bundle;
    .end local v2    # "outData":Landroid/os/Bundle;
    .end local v3    # "value":I
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public getSimLockState(I)I
    .locals 6
    .param p1, "phoneId"    # I

    .prologue
    .line 855
    const/4 v3, -0x1

    .line 856
    .local v3, "state":I
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 857
    .local v1, "inData":Landroid/os/Bundle;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 858
    .local v2, "outData":Landroid/os/Bundle;
    const-string v4, "rilIoControl_ex"

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 860
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPSprintReqManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v4

    const/16 v5, 0xb2

    invoke-interface {v4, v5, v1, v2, p1}, Lcom/android/internal/telephony/ITelephony;->telephonyDualIoControl(ILandroid/os/Bundle;Landroid/os/Bundle;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 865
    :goto_0
    const-string v4, "state"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 866
    return v3

    .line 861
    :catch_0
    move-exception v0

    .line 863
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getStateAndConnectionAttempts(I)[Ljava/lang/String;
    .locals 6
    .param p1, "phoneId"    # I

    .prologue
    .line 803
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 804
    .local v2, "inData":Landroid/os/Bundle;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 805
    .local v3, "outData":Landroid/os/Bundle;
    const-string v4, "rilIoControl_ex"

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 807
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPSprintReqManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v4

    const/16 v5, 0xad

    invoke-interface {v4, v5, v2, v3, p1}, Lcom/android/internal/telephony/ITelephony;->telephonyDualIoControl(ILandroid/os/Bundle;Landroid/os/Bundle;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 812
    :goto_0
    const-string v4, "data"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 813
    .local v0, "data":[Ljava/lang/String;
    return-object v0

    .line 808
    .end local v0    # "data":[Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 810
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public lteApnProfileRead(Ljava/lang/String;I)[Ljava/lang/String;
    .locals 7
    .param p1, "profileId"    # Ljava/lang/String;
    .param p2, "phoneId"    # I

    .prologue
    .line 624
    const/4 v4, 0x0

    .line 625
    .local v4, "strs":[Ljava/lang/String;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 626
    .local v3, "reply":Landroid/os/Bundle;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 627
    .local v1, "inData":Landroid/os/Bundle;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 628
    .local v2, "outData":Landroid/os/Bundle;
    const-string v5, "rilIoControl_ex"

    const/4 v6, 0x1

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 629
    const-string v5, "profileId"

    invoke-virtual {v1, v5, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPSprintReqManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v5

    const/16 v6, 0x8f

    invoke-interface {v5, v6, v1, v2, p2}, Lcom/android/internal/telephony/ITelephony;->telephonyDualIoControl(ILandroid/os/Bundle;Landroid/os/Bundle;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 636
    :goto_0
    const-string v5, "reply_bundle"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 637
    if-eqz v3, :cond_0

    .line 638
    const-string v5, "lteApnProfileRead"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 640
    :cond_0
    return-object v4

    .line 632
    :catch_0
    move-exception v0

    .line 634
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public lteApnProfileWrite(Lcom/yulong/android/telephony/ApnProfile;I)Z
    .locals 6
    .param p1, "apn"    # Lcom/yulong/android/telephony/ApnProfile;
    .param p2, "phoneId"    # I

    .prologue
    .line 661
    const/4 v3, 0x0

    .line 662
    .local v3, "ret":Z
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 663
    .local v1, "inData":Landroid/os/Bundle;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 664
    .local v2, "outData":Landroid/os/Bundle;
    if-eqz p1, :cond_0

    .line 665
    const-string v4, "rilIoControl_ex"

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 666
    invoke-virtual {p1, v1}, Lcom/yulong/android/telephony/ApnProfile;->fillInBundle(Landroid/os/Bundle;)V

    .line 669
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPSprintReqManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v4

    const/16 v5, 0x91

    invoke-interface {v4, v5, v1, v2, p2}, Lcom/android/internal/telephony/ITelephony;->telephonyDualIoControl(ILandroid/os/Bundle;Landroid/os/Bundle;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 674
    :goto_0
    return v3

    .line 670
    :catch_0
    move-exception v0

    .line 672
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public mobileIpProfileRead(I)[Ljava/lang/String;
    .locals 7
    .param p1, "phoneId"    # I

    .prologue
    .line 605
    const/4 v4, 0x0

    .line 606
    .local v4, "strs":[Ljava/lang/String;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 607
    .local v3, "reply":Landroid/os/Bundle;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 608
    .local v1, "inData":Landroid/os/Bundle;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 609
    .local v2, "outData":Landroid/os/Bundle;
    const-string v5, "rilIoControl_ex"

    const/4 v6, 0x1

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 611
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPSprintReqManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v5

    const/16 v6, 0x90

    invoke-interface {v5, v6, v1, v2, p1}, Lcom/android/internal/telephony/ITelephony;->telephonyDualIoControl(ILandroid/os/Bundle;Landroid/os/Bundle;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 616
    :goto_0
    const-string v5, "reply_bundle"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 617
    if-eqz v3, :cond_0

    .line 618
    const-string v5, "mobileIpProfileRead"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 620
    :cond_0
    return-object v4

    .line 612
    :catch_0
    move-exception v0

    .line 614
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public mobileIpProfileWrite(Lcom/yulong/android/telephony/MobileIpProfile;I)Z
    .locals 6
    .param p1, "mip"    # Lcom/yulong/android/telephony/MobileIpProfile;
    .param p2, "phoneId"    # I

    .prologue
    .line 644
    const/4 v3, 0x0

    .line 645
    .local v3, "ret":Z
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 646
    .local v1, "inData":Landroid/os/Bundle;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 647
    .local v2, "outData":Landroid/os/Bundle;
    if-eqz p1, :cond_0

    .line 648
    const-string v4, "rilIoControl_ex"

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 649
    invoke-virtual {p1, v1}, Lcom/yulong/android/telephony/MobileIpProfile;->fillInBundle(Landroid/os/Bundle;)V

    .line 652
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPSprintReqManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v4

    const/16 v5, 0x92

    invoke-interface {v4, v5, v1, v2, p2}, Lcom/android/internal/telephony/ITelephony;->telephonyDualIoControl(ILandroid/os/Bundle;Landroid/os/Bundle;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 657
    :goto_0
    return v3

    .line 653
    :catch_0
    move-exception v0

    .line 655
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public msidRead()Ljava/lang/String;
    .locals 4

    .prologue
    const v3, 0x80001

    .line 691
    const/16 v2, 0x20

    invoke-virtual {p0, v3, v2}, Lcom/yulong/android/telephony/CPSprintReqManager;->oemHookOmaRead(II)Ljava/lang/String;

    move-result-object v0

    .line 692
    .local v0, "min1":Ljava/lang/String;
    const/16 v2, 0x21

    invoke-virtual {p0, v3, v2}, Lcom/yulong/android/telephony/CPSprintReqManager;->oemHookOmaRead(II)Ljava/lang/String;

    move-result-object v1

    .line 693
    .local v1, "min2":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public msidWrite(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "msid"    # Ljava/lang/String;

    .prologue
    const v8, 0x80002

    const/4 v7, 0x3

    .line 697
    const-string v2, "the length mismatch"

    .line 698
    .local v2, "result":Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0xa

    if-ne v5, v6, :cond_0

    .line 699
    const/4 v5, 0x0

    invoke-virtual {p1, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 700
    .local v1, "min2":Ljava/lang/String;
    invoke-virtual {p1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 701
    .local v0, "min1":Ljava/lang/String;
    const/16 v5, 0x21

    invoke-virtual {p0, v8, v5, v1}, Lcom/yulong/android/telephony/CPSprintReqManager;->oemHookOmaWrite(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 702
    .local v4, "retMin2":Ljava/lang/String;
    const/16 v5, 0x20

    invoke-virtual {p0, v8, v5, v0}, Lcom/yulong/android/telephony/CPSprintReqManager;->oemHookOmaWrite(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 703
    .local v3, "retMin1":Ljava/lang/String;
    sget-object v5, Lcom/yulong/android/telephony/CPSprintReqManager;->SUCCESS:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    sget-object v5, Lcom/yulong/android/telephony/CPSprintReqManager;->SUCCESS:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 704
    sget-object v2, Lcom/yulong/android/telephony/CPSprintReqManager;->SUCCESS:Ljava/lang/String;

    .line 709
    .end local v0    # "min1":Ljava/lang/String;
    .end local v1    # "min2":Ljava/lang/String;
    .end local v2    # "result":Ljava/lang/String;
    .end local v3    # "retMin1":Ljava/lang/String;
    .end local v4    # "retMin2":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v2

    .line 706
    .restart local v0    # "min1":Ljava/lang/String;
    .restart local v1    # "min2":Ljava/lang/String;
    .restart local v2    # "result":Ljava/lang/String;
    .restart local v3    # "retMin1":Ljava/lang/String;
    .restart local v4    # "retMin2":Ljava/lang/String;
    :cond_1
    sget-object v2, Lcom/yulong/android/telephony/CPSprintReqManager;->EMPTYSTR:Ljava/lang/String;

    goto :goto_0
.end method

.method public oemHookOmaRead(II)Ljava/lang/String;
    .locals 26
    .param p1, "requestId"    # I
    .param p2, "nvItemId"    # I

    .prologue
    .line 197
    const/16 v19, 0x0

    .line 199
    .local v19, "str":Ljava/lang/String;
    const/4 v6, 0x0

    .line 201
    .local v6, "bts":[B
    const v23, 0x80001

    move/from16 v0, p1

    move/from16 v1, v23

    if-ne v0, v1, :cond_0

    .line 202
    invoke-virtual/range {p0 .. p2}, Lcom/yulong/android/telephony/CPSprintReqManager;->getNvParam(II)Landroid/os/AsyncResult;

    move-result-object v17

    .line 206
    .local v17, "result":Landroid/os/AsyncResult;
    :goto_0
    if-nez v17, :cond_1

    .line 207
    const/16 v23, 0x0

    .line 315
    :goto_1
    return-object v23

    .line 204
    .end local v17    # "result":Landroid/os/AsyncResult;
    :cond_0
    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/yulong/android/telephony/CPSprintReqManager;->getNvParam(II)Landroid/os/AsyncResult;

    move-result-object v17

    .restart local v17    # "result":Landroid/os/AsyncResult;
    goto :goto_0

    .line 210
    :cond_1
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v23, v0

    if-eqz v23, :cond_3

    .line 211
    const-string v23, "CPSprintReqManager"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "QCRIL Get Tune Away Command returned Exception: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_2
    move-object/from16 v23, v19

    .line 315
    goto :goto_1

    .line 213
    :cond_3
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v23, v0

    if-eqz v23, :cond_2

    .line 214
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, [B

    move-object/from16 v6, v23

    check-cast v6, [B

    .line 215
    const-string v23, "CPSprintReqManager"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "oemHookOmaRead requestId = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ",tyte = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-static {v6}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    const/high16 v23, 0x90000

    move/from16 v0, p1

    move/from16 v1, v23

    if-le v0, v1, :cond_9

    .line 217
    const v23, 0x90006

    move/from16 v0, p1

    move/from16 v1, v23

    if-ne v0, v1, :cond_4

    .line 218
    const/16 v23, 0x0

    array-length v0, v6

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-static {v6, v0, v1}, Lcom/yulong/android/telephony/CPSprintReqManager;->ascallByteToString([BII)Ljava/lang/String;

    move-result-object v19

    goto :goto_2

    .line 219
    :cond_4
    const v23, 0x9001c

    move/from16 v0, p1

    move/from16 v1, v23

    if-ne v0, v1, :cond_5

    .line 220
    const/16 v23, 0x0

    array-length v0, v6

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-static {v6, v0, v1}, Lcom/yulong/android/telephony/CPSprintReqManager;->ascallByteToString([BII)Ljava/lang/String;

    move-result-object v19

    goto :goto_2

    .line 221
    :cond_5
    const v23, 0x9001b

    move/from16 v0, p1

    move/from16 v1, v23

    if-ne v0, v1, :cond_6

    .line 222
    const/16 v23, 0x0

    array-length v0, v6

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-static {v6, v0, v1}, Lcom/yulong/android/telephony/CPSprintReqManager;->ascallByteToString([BII)Ljava/lang/String;

    move-result-object v19

    goto/16 :goto_2

    .line 224
    :cond_6
    array-length v0, v6

    move/from16 v23, v0

    const/16 v24, 0x4

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_7

    .line 225
    invoke-static {v6}, Lcom/yulong/android/telephony/CPSprintReqManager;->byte32ToInt([B)I

    move-result v22

    .line 226
    .local v22, "value":I
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v19

    goto/16 :goto_2

    .line 227
    .end local v22    # "value":I
    :cond_7
    array-length v0, v6

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_8

    .line 228
    const/16 v23, 0x0

    aget-byte v22, v6, v23

    .line 229
    .restart local v22    # "value":I
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v19

    goto/16 :goto_2

    .line 231
    .end local v22    # "value":I
    :cond_8
    invoke-static {v6}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v19

    goto/16 :goto_2

    .line 234
    :cond_9
    const/high16 v23, 0x80000

    move/from16 v0, p1

    move/from16 v1, v23

    if-le v0, v1, :cond_a

    .line 236
    sparse-switch p2, :sswitch_data_0

    .line 306
    invoke-static {v6}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v19

    goto/16 :goto_2

    .line 238
    :sswitch_0
    const/16 v23, 0x0

    array-length v0, v6

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-static {v6, v0, v1}, Lcom/yulong/android/telephony/CPSprintReqManager;->ascallByteToString([BII)Ljava/lang/String;

    move-result-object v19

    .line 239
    goto/16 :goto_2

    .line 241
    :sswitch_1
    array-length v11, v6

    .line 242
    .local v11, "min1len":I
    const/16 v23, 0x4

    move/from16 v0, v23

    if-lt v11, v0, :cond_2

    .line 243
    const/16 v23, 0x4

    move/from16 v0, v23

    new-array v0, v0, [B

    move-object/from16 v20, v0

    .line 245
    .local v20, "temp":[B
    const/16 v23, 0x0

    add-int/lit8 v24, v11, -0x4

    aget-byte v24, v6, v24

    aput-byte v24, v20, v23

    .line 246
    const/16 v23, 0x1

    add-int/lit8 v24, v11, -0x3

    aget-byte v24, v6, v24

    aput-byte v24, v20, v23

    .line 247
    const/16 v23, 0x2

    add-int/lit8 v24, v11, -0x2

    aget-byte v24, v6, v24

    aput-byte v24, v20, v23

    .line 248
    const/16 v23, 0x3

    add-int/lit8 v24, v11, -0x1

    aget-byte v24, v6, v24

    aput-byte v24, v20, v23

    .line 249
    invoke-static/range {v20 .. v20}, Lcom/yulong/android/telephony/CPSprintReqManager;->byte32ToInt([B)I

    move-result v13

    .line 250
    .local v13, "mn1":I
    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v19

    .line 252
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v21

    .line 253
    .local v21, "tmpLen":I
    rsub-int/lit8 v3, v21, 0x7

    .line 254
    .local v3, "addStr":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_3
    if-ge v7, v3, :cond_2

    .line 255
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "0"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 254
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 261
    .end local v3    # "addStr":I
    .end local v7    # "i":I
    .end local v11    # "min1len":I
    .end local v13    # "mn1":I
    .end local v20    # "temp":[B
    .end local v21    # "tmpLen":I
    :sswitch_2
    array-length v12, v6

    .line 262
    .local v12, "min2len":I
    const/16 v23, 0x2

    move/from16 v0, v23

    if-lt v12, v0, :cond_2

    .line 263
    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [B

    move-object/from16 v20, v0

    .line 264
    .restart local v20    # "temp":[B
    const/16 v23, 0x0

    add-int/lit8 v24, v12, -0x2

    aget-byte v24, v6, v24

    aput-byte v24, v20, v23

    .line 265
    const/16 v23, 0x1

    add-int/lit8 v24, v12, -0x1

    aget-byte v24, v6, v24

    aput-byte v24, v20, v23

    .line 266
    invoke-static/range {v20 .. v20}, Lcom/yulong/android/telephony/CPSprintReqManager;->byte16ToInt([B)I

    move-result v14

    .line 267
    .local v14, "mn2":I
    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v19

    .line 269
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v21

    .line 270
    .restart local v21    # "tmpLen":I
    rsub-int/lit8 v3, v21, 0x3

    .line 271
    .restart local v3    # "addStr":I
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_4
    if-ge v7, v3, :cond_2

    .line 272
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "0"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 271
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 277
    .end local v3    # "addStr":I
    .end local v7    # "i":I
    .end local v12    # "min2len":I
    .end local v14    # "mn2":I
    .end local v20    # "temp":[B
    .end local v21    # "tmpLen":I
    :sswitch_3
    array-length v8, v6

    .line 278
    .local v8, "len":I
    const/16 v23, 0x6

    move/from16 v0, v23

    if-lt v8, v0, :cond_2

    .line 279
    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v5, v0, [B

    .line 280
    .local v5, "bsid":[B
    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v4, v0, [B

    .line 281
    .local v4, "bnid":[B
    const/16 v23, 0x0

    const/16 v24, 0x2

    aget-byte v24, v6, v24

    aput-byte v24, v5, v23

    .line 282
    const/16 v23, 0x1

    const/16 v24, 0x3

    aget-byte v24, v6, v24

    aput-byte v24, v5, v23

    .line 283
    const/16 v23, 0x0

    const/16 v24, 0x4

    aget-byte v24, v6, v24

    aput-byte v24, v4, v23

    .line 284
    const/16 v23, 0x1

    const/16 v24, 0x5

    aget-byte v24, v6, v24

    aput-byte v24, v4, v23

    .line 285
    invoke-static {v5}, Lcom/yulong/android/telephony/CPSprintReqManager;->byte16ToInt([B)I

    move-result v18

    .line 286
    .local v18, "sid":I
    invoke-static {v4}, Lcom/yulong/android/telephony/CPSprintReqManager;->byte16ToInt([B)I

    move-result v16

    .line 287
    .local v16, "nid":I
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ","

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 288
    goto/16 :goto_2

    .line 291
    .end local v4    # "bnid":[B
    .end local v5    # "bsid":[B
    .end local v8    # "len":I
    .end local v16    # "nid":I
    .end local v18    # "sid":I
    :sswitch_4
    array-length v10, v6

    .line 292
    .local v10, "mcclen":I
    const/16 v23, 0x4

    move/from16 v0, v23

    if-lt v10, v0, :cond_2

    .line 293
    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v9, v0, [B

    .line 294
    .local v9, "mcc":[B
    const/16 v23, 0x0

    const/16 v24, 0x2

    aget-byte v24, v6, v24

    aput-byte v24, v9, v23

    .line 295
    const/16 v23, 0x1

    const/16 v24, 0x3

    aget-byte v24, v6, v24

    aput-byte v24, v9, v23

    .line 296
    invoke-static {v9}, Lcom/yulong/android/telephony/CPSprintReqManager;->byte16ToInt([B)I

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v19

    .line 297
    goto/16 :goto_2

    .line 300
    .end local v9    # "mcc":[B
    .end local v10    # "mcclen":I
    :sswitch_5
    array-length v15, v6

    .line 301
    .local v15, "mnclen":I
    const/16 v23, 0x2

    move/from16 v0, v23

    if-lt v15, v0, :cond_2

    .line 302
    const/16 v23, 0x1

    aget-byte v23, v6, v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v19

    goto/16 :goto_2

    .line 311
    .end local v15    # "mnclen":I
    :cond_a
    invoke-static {v6}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v19

    goto/16 :goto_2

    .line 236
    nop

    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_1
        0x21 -> :sswitch_2
        0xb0 -> :sswitch_4
        0xb1 -> :sswitch_5
        0xb2 -> :sswitch_0
        0x103 -> :sswitch_3
    .end sparse-switch
.end method

.method public oemHookOmaWrite(IILjava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "requestId"    # I
    .param p2, "nvItemId"    # I
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 326
    const/4 v1, 0x0

    .line 327
    .local v1, "str":Ljava/lang/String;
    const/4 v0, 0x0

    .line 328
    .local v0, "result":Landroid/os/AsyncResult;
    const v2, 0x80002

    if-ne p1, v2, :cond_0

    .line 329
    invoke-virtual {p0, p1, p2, p3}, Lcom/yulong/android/telephony/CPSprintReqManager;->setNvParamByItem(IILjava/lang/String;)Landroid/os/AsyncResult;

    move-result-object v0

    .line 334
    :goto_0
    if-nez v0, :cond_1

    .line 335
    const/4 v2, 0x0

    .line 353
    :goto_1
    return-object v2

    .line 331
    :cond_0
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, p1, v2}, Lcom/yulong/android/telephony/CPSprintReqManager;->setNvParam(II)Landroid/os/AsyncResult;

    move-result-object v0

    goto :goto_0

    .line 338
    :cond_1
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_3

    .line 339
    const-string v2, "CPSprintReqManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "QCRIL Get Tune Away Command returned Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    :goto_2
    if-nez v1, :cond_2

    .line 350
    sget-object v1, Lcom/yulong/android/telephony/CPSprintReqManager;->EMPTYSTR:Ljava/lang/String;

    :cond_2
    move-object v2, v1

    .line 353
    goto :goto_1

    .line 341
    :cond_3
    iget-object v2, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v2, :cond_5

    .line 342
    iget-object v2, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 343
    sget-object v1, Lcom/yulong/android/telephony/CPSprintReqManager;->SUCCESS:Ljava/lang/String;

    .line 345
    :cond_4
    const-string v2, "CPSprintReqManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCmdValue :: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 347
    :cond_5
    const-string v2, "CPSprintReqManager"

    const-string v3, "getCmdValue returned null response "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public priReset(Ljava/lang/String;I)Ljava/lang/String;
    .locals 6
    .param p1, "resetType"    # Ljava/lang/String;
    .param p2, "phoneId"    # I

    .prologue
    .line 817
    const-string v0, ""

    .line 818
    .local v0, "data":Ljava/lang/String;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 819
    .local v2, "inData":Landroid/os/Bundle;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 820
    .local v3, "outData":Landroid/os/Bundle;
    const-string v4, "rilIoControl_ex"

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 821
    const-string v4, "resetType"

    invoke-virtual {v2, v4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 823
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPSprintReqManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v4

    const/16 v5, 0xae

    invoke-interface {v4, v5, v2, v3, p2}, Lcom/android/internal/telephony/ITelephony;->telephonyDualIoControl(ILandroid/os/Bundle;Landroid/os/Bundle;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 828
    :goto_0
    const-string v4, "data"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 829
    return-object v0

    .line 824
    :catch_0
    move-exception v1

    .line 826
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public prlWrite(I)Z
    .locals 6
    .param p1, "phoneId"    # I

    .prologue
    .line 678
    const/4 v3, 0x0

    .line 679
    .local v3, "ret":Z
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 680
    .local v1, "inData":Landroid/os/Bundle;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 682
    .local v2, "outData":Landroid/os/Bundle;
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPSprintReqManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v4

    const/16 v5, 0x93

    invoke-interface {v4, v5, v1, v2, p1}, Lcom/android/internal/telephony/ITelephony;->telephonyDualIoControl(ILandroid/os/Bundle;Landroid/os/Bundle;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 687
    :goto_0
    return v3

    .line 683
    :catch_0
    move-exception v0

    .line 685
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public resetModem(I)V
    .locals 8
    .param p1, "phoneId"    # I

    .prologue
    .line 914
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 915
    .local v1, "inData":Landroid/os/Bundle;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 916
    .local v2, "outData":Landroid/os/Bundle;
    const-string v4, "rilIoControl_ex"

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 918
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPSprintReqManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v4

    const/16 v5, 0xb6

    invoke-interface {v4, v5, v1, v2, p1}, Lcom/android/internal/telephony/ITelephony;->telephonyDualIoControl(ILandroid/os/Bundle;Landroid/os/Bundle;I)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 921
    .local v3, "syn":Ljava/lang/Boolean;
    iget-object v5, p0, Lcom/yulong/android/telephony/CPSprintReqManager;->mLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 923
    :try_start_1
    iget-object v4, p0, Lcom/yulong/android/telephony/CPSprintReqManager;->mLock:Ljava/lang/Object;

    const-wide/16 v6, 0x7d0

    invoke-virtual {v4, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 928
    :goto_0
    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 929
    :try_start_3
    const-string v4, "CPSprintReqManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "syn: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 931
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPSprintReqManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v4

    const/16 v5, 0xa9

    invoke-interface {v4, v5, v1, v2, p1}, Lcom/android/internal/telephony/ITelephony;->telephonyDualIoControl(ILandroid/os/Bundle;Landroid/os/Bundle;I)Z

    .line 935
    :cond_0
    iget-object v5, p0, Lcom/yulong/android/telephony/CPSprintReqManager;->mLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    .line 936
    :try_start_4
    iget-object v4, p0, Lcom/yulong/android/telephony/CPSprintReqManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    .line 937
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 943
    .end local v3    # "syn":Ljava/lang/Boolean;
    :goto_1
    return-void

    .line 924
    .restart local v3    # "syn":Ljava/lang/Boolean;
    :catch_0
    move-exception v0

    .line 926
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 928
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v4
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1

    .line 939
    .end local v3    # "syn":Ljava/lang/Boolean;
    :catch_1
    move-exception v0

    .line 941
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 937
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v3    # "syn":Ljava/lang/Boolean;
    :catchall_1
    move-exception v4

    :try_start_7
    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v4
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_1
.end method

.method public declared-synchronized setHiddenMenuValue(ILjava/lang/String;I)Z
    .locals 6
    .param p1, "subRequest"    # I
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "phoneId"    # I

    .prologue
    .line 734
    monitor-enter p0

    const/4 v3, 0x0

    .line 735
    .local v3, "ret":Z
    :try_start_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 736
    .local v1, "inData":Landroid/os/Bundle;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 737
    .local v2, "outData":Landroid/os/Bundle;
    const-string v4, "rilIoControl_ex"

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 738
    const-string v4, "subRequest"

    invoke-virtual {v1, v4, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 739
    const-string v4, "value"

    invoke-virtual {v1, v4, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 741
    :try_start_1
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPSprintReqManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v4

    const/16 v5, 0x95

    invoke-interface {v4, v5, v1, v2, p3}, Lcom/android/internal/telephony/ITelephony;->telephonyDualIoControl(ILandroid/os/Bundle;Landroid/os/Bundle;I)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    .line 746
    :goto_0
    monitor-exit p0

    return v3

    .line 742
    :catch_0
    move-exception v0

    .line 744
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 734
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "inData":Landroid/os/Bundle;
    .end local v2    # "outData":Landroid/os/Bundle;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public setNvParam(II)Landroid/os/AsyncResult;
    .locals 3
    .param p1, "requestId"    # I
    .param p2, "payload"    # I

    .prologue
    .line 383
    sget v2, Lcom/yulong/android/telephony/CPSprintReqManager;->mHeaderSize:I

    add-int/lit8 v2, v2, 0x4

    new-array v1, v2, [B

    .line 384
    .local v1, "request":[B
    invoke-static {v1}, Lcom/yulong/android/telephony/CPSprintReqManager;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 385
    .local v0, "reqBuffer":Ljava/nio/ByteBuffer;
    if-nez v0, :cond_0

    .line 386
    const/4 v2, 0x0

    .line 391
    :goto_0
    return-object v2

    .line 388
    :cond_0
    const/4 v2, 0x4

    invoke-static {v0, p1, v2}, Lcom/yulong/android/telephony/CPSprintReqManager;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 389
    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 391
    invoke-direct {p0, p1, v1}, Lcom/yulong/android/telephony/CPSprintReqManager;->sendRilOemHookMsg(I[B)Landroid/os/AsyncResult;

    move-result-object v2

    goto :goto_0
.end method

.method public setNvParamByItem(IILjava/lang/String;)Landroid/os/AsyncResult;
    .locals 20
    .param p1, "requestId"    # I
    .param p2, "nvItemId"    # I
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 395
    if-nez p3, :cond_0

    .line 396
    const/16 v17, 0x0

    .line 475
    :goto_0
    return-object v17

    .line 398
    :cond_0
    const/4 v12, 0x0

    .line 399
    .local v12, "request":[B
    const/4 v10, 0x0

    .line 401
    .local v10, "nam":B
    const/4 v2, 0x0

    .line 403
    .local v2, "data":[B
    sparse-switch p2, :sswitch_data_0

    .line 462
    const/16 v17, 0x0

    goto :goto_0

    .line 405
    :sswitch_0
    const/16 v17, 0xb

    move/from16 v0, v17

    new-array v6, v0, [B

    .line 406
    .local v6, "mdn":[B
    const/16 v17, 0x0

    const/16 v18, -0x1

    aput-byte v18, v6, v17

    .line 407
    if-eqz p3, :cond_1

    .line 408
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v17

    move/from16 v0, v17

    if-ge v3, v0, :cond_1

    .line 409
    rsub-int/lit8 v17, v3, 0xa

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v18

    add-int/lit8 v18, v18, -0x1

    sub-int v18, v18, v3

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v18

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v6, v17

    .line 408
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 412
    .end local v3    # "i":I
    :cond_1
    move-object v2, v6

    .line 465
    .end local v6    # "mdn":[B
    :goto_2
    sget v17, Lcom/yulong/android/telephony/CPSprintReqManager;->mHeaderSize:I

    add-int/lit8 v17, v17, 0x4

    add-int/lit8 v17, v17, 0x4

    array-length v0, v2

    move/from16 v18, v0

    add-int v17, v17, v18

    move/from16 v0, v17

    new-array v12, v0, [B

    .line 466
    invoke-static {v12}, Lcom/yulong/android/telephony/CPSprintReqManager;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v11

    .line 467
    .local v11, "reqBuffer":Ljava/nio/ByteBuffer;
    if-nez v11, :cond_3

    .line 468
    const/16 v17, 0x0

    goto :goto_0

    .line 415
    .end local v11    # "reqBuffer":Ljava/nio/ByteBuffer;
    :sswitch_1
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 416
    .local v4, "mValue":I
    const/16 v17, 0xc

    move/from16 v0, v17

    new-array v7, v0, [B

    .line 417
    .local v7, "min1":[B
    const/16 v17, 0x0

    const/16 v18, -0x1

    aput-byte v18, v7, v17

    .line 418
    const/16 v17, 0x8

    and-int/lit16 v0, v4, 0xff

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v7, v17

    .line 419
    const/16 v17, 0x9

    shr-int/lit8 v18, v4, 0x8

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v7, v17

    .line 420
    const/16 v17, 0xa

    shr-int/lit8 v18, v4, 0x10

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v7, v17

    .line 421
    const/16 v17, 0xb

    shr-int/lit8 v18, v4, 0x18

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v7, v17

    .line 422
    move-object v2, v7

    .line 423
    goto :goto_2

    .line 425
    .end local v4    # "mValue":I
    .end local v7    # "min1":[B
    :sswitch_2
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 426
    .restart local v4    # "mValue":I
    const/16 v17, 0x6

    move/from16 v0, v17

    new-array v8, v0, [B

    .line 427
    .local v8, "min2":[B
    const/16 v17, 0x0

    const/16 v18, -0x1

    aput-byte v18, v8, v17

    .line 428
    const/16 v17, 0x4

    and-int/lit16 v0, v4, 0xff

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v8, v17

    .line 429
    const/16 v17, 0x5

    shr-int/lit8 v18, v4, 0x8

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v8, v17

    .line 430
    move-object v2, v8

    .line 431
    goto/16 :goto_2

    .line 433
    .end local v4    # "mValue":I
    .end local v8    # "min2":[B
    :sswitch_3
    const-string v17, ","

    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 434
    .local v14, "str":[Ljava/lang/String;
    const/16 v17, 0x52

    move/from16 v0, v17

    new-array v13, v0, [B

    .line 435
    .local v13, "sidnid":[B
    const/16 v17, 0x0

    const/16 v18, -0x1

    aput-byte v18, v13, v17

    .line 436
    if-eqz v14, :cond_2

    array-length v0, v14

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_2

    .line 437
    const/16 v17, 0x0

    aget-object v17, v14, v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    .line 438
    .local v15, "va3":I
    const/16 v17, 0x1

    aget-object v17, v14, v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    .line 439
    .local v16, "va4":I
    const/16 v17, 0x2

    and-int/lit16 v0, v15, 0xff

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v13, v17

    .line 440
    const/16 v17, 0x3

    shr-int/lit8 v18, v15, 0x8

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v13, v17

    .line 441
    const/16 v17, 0x4

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v13, v17

    .line 442
    const/16 v17, 0x5

    shr-int/lit8 v18, v16, 0x8

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v13, v17

    .line 444
    .end local v15    # "va3":I
    .end local v16    # "va4":I
    :cond_2
    move-object v2, v13

    .line 445
    goto/16 :goto_2

    .line 447
    .end local v13    # "sidnid":[B
    .end local v14    # "str":[Ljava/lang/String;
    :sswitch_4
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 448
    .restart local v4    # "mValue":I
    const/16 v17, 0x4

    move/from16 v0, v17

    new-array v5, v0, [B

    .line 449
    .local v5, "mcc":[B
    const/16 v17, 0x0

    const/16 v18, -0x1

    aput-byte v18, v5, v17

    .line 450
    const/16 v17, 0x2

    and-int/lit16 v0, v4, 0xff

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v5, v17

    .line 451
    const/16 v17, 0x3

    shr-int/lit8 v18, v4, 0x8

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v5, v17

    .line 452
    move-object v2, v5

    .line 453
    goto/16 :goto_2

    .line 455
    .end local v4    # "mValue":I
    .end local v5    # "mcc":[B
    :sswitch_5
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 456
    .restart local v4    # "mValue":I
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v9, v0, [B

    .line 457
    .local v9, "mnc":[B
    const/16 v17, 0x0

    const/16 v18, -0x1

    aput-byte v18, v9, v17

    .line 458
    const/16 v17, 0x1

    and-int/lit16 v0, v4, 0xff

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v9, v17

    .line 459
    move-object v2, v9

    .line 460
    goto/16 :goto_2

    .line 470
    .end local v4    # "mValue":I
    .end local v9    # "mnc":[B
    .restart local v11    # "reqBuffer":Ljava/nio/ByteBuffer;
    :cond_3
    const/16 v17, 0x4

    move/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v11, v0, v1}, Lcom/yulong/android/telephony/CPSprintReqManager;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 471
    move/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 472
    array-length v0, v2

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 473
    invoke-virtual {v11, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 474
    const-string v17, "CPSprintReqManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "setNvParamByItem requestId = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ",request = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-static {v12}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v12}, Lcom/yulong/android/telephony/CPSprintReqManager;->sendRilOemHookMsg(I[B)Landroid/os/AsyncResult;

    move-result-object v17

    goto/16 :goto_0

    .line 403
    nop

    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_1
        0x21 -> :sswitch_2
        0xb0 -> :sswitch_4
        0xb1 -> :sswitch_5
        0xb2 -> :sswitch_0
        0x103 -> :sswitch_3
    .end sparse-switch
.end method

.method public setRadioPower(ZI)Z
    .locals 6
    .param p1, "power"    # Z
    .param p2, "phoneId"    # I

    .prologue
    .line 899
    const/4 v3, 0x0

    .line 900
    .local v3, "ret":Z
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 901
    .local v1, "inData":Landroid/os/Bundle;
    const-string v4, "power"

    invoke-virtual {v1, v4, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 902
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 903
    .local v2, "outData":Landroid/os/Bundle;
    const-string v4, "rilIoControl_ex"

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 905
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPSprintReqManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v4

    const/16 v5, 0xb5

    invoke-interface {v4, v5, v1, v2, p2}, Lcom/android/internal/telephony/ITelephony;->telephonyDualIoControl(ILandroid/os/Bundle;Landroid/os/Bundle;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 910
    :goto_0
    return v3

    .line 906
    :catch_0
    move-exception v0

    .line 908
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public declared-synchronized setSettingsParamValue(Ljava/lang/String;II)Z
    .locals 6
    .param p1, "param"    # Ljava/lang/String;
    .param p2, "value"    # I
    .param p3, "phoneId"    # I

    .prologue
    .line 767
    monitor-enter p0

    const/4 v3, 0x0

    .line 768
    .local v3, "ret":Z
    :try_start_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 769
    .local v1, "inData":Landroid/os/Bundle;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 770
    .local v2, "outData":Landroid/os/Bundle;
    const-string v4, "rilIoControl_ex"

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 771
    const-string v4, "param"

    invoke-virtual {v1, v4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 772
    const-string v4, "value"

    invoke-virtual {v1, v4, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 774
    :try_start_1
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPSprintReqManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v4

    const/16 v5, 0x9e

    invoke-interface {v4, v5, v1, v2, p3}, Lcom/android/internal/telephony/ITelephony;->telephonyDualIoControl(ILandroid/os/Bundle;Landroid/os/Bundle;I)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    .line 779
    :goto_0
    monitor-exit p0

    return v3

    .line 775
    :catch_0
    move-exception v0

    .line 777
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 767
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "inData":Landroid/os/Bundle;
    .end local v2    # "outData":Landroid/os/Bundle;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public setSimLockState(II)Z
    .locals 6
    .param p1, "state"    # I
    .param p2, "phoneId"    # I

    .prologue
    .line 870
    const/4 v3, 0x0

    .line 871
    .local v3, "ret":Z
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 872
    .local v1, "inData":Landroid/os/Bundle;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 873
    .local v2, "outData":Landroid/os/Bundle;
    const-string v4, "rilIoControl_ex"

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 874
    const-string v4, "state"

    invoke-virtual {v1, v4, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 876
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPSprintReqManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v4

    const/16 v5, 0xb3

    invoke-interface {v4, v5, v1, v2, p2}, Lcom/android/internal/telephony/ITelephony;->telephonyDualIoControl(ILandroid/os/Bundle;Landroid/os/Bundle;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 881
    :goto_0
    return v3

    .line 877
    :catch_0
    move-exception v0

    .line 879
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
