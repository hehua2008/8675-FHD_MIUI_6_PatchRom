.class public Lcom/yulong/android/telephony/CPUWDManager;
.super Landroid/os/Handler;
.source "CPUWDManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yulong/android/telephony/CPUWDManager$1;,
        Lcom/yulong/android/telephony/CPUWDManager$JavaServiceImpl;,
        Lcom/yulong/android/telephony/CPUWDManager$CPUwdDataStateReceiver;,
        Lcom/yulong/android/telephony/CPUWDManager$DefaultDataNetworkChangeObserver;,
        Lcom/yulong/android/telephony/CPUWDManager$ApnChangeObserver;
    }
.end annotation


# static fields
.field public static final ACTION_FINISH_SELECT_NET_OPERATION:Ljava/lang/String; = "yulong.intent.action.SELECT_NET_OPERATION"

.field public static final ACTION_UW_CLEAN_UP_DATA:Ljava/lang/String; = "yulong.intent.action.UW_CLEAN_UP_DATA"

.field public static final ACTION_UW_DEREGIST:Ljava/lang/String; = "yulong.intent.action.UW_DEREGIST"

.field public static final ACTION_UW_GET_CONN_INFO:Ljava/lang/String; = "yulong.intent.action.UW_GET_CONN_INFO"

.field public static final ACTION_UW_GET_CONN_STATE:Ljava/lang/String; = "yulong.intent.action.UW_GET_CONN_STATE"

.field public static final ACTION_UW_GET_CONN_STATS:Ljava/lang/String; = "yulong.intent.action.UW_GET_CONN_STATS"

.field public static final ACTION_UW_GET_REGIST_STATUS:Ljava/lang/String; = "yulong.intent.action.UW_GET_REGIST_STATUS"

.field public static final ACTION_UW_REGIST:Ljava/lang/String; = "yulong.intent.action.UW_REGIST"

.field public static final ACTION_UW_SET_WAG_IP:Ljava/lang/String; = "yulong.intent.action.UW_SET_WAG_IP"

.field public static final ACTION_UW_START_SERVICE:Ljava/lang/String; = "yulong.intent.action.START_UW_SERVICE"

.field public static final ACTION_UW_STATE_CHANGE:Ljava/lang/String; = "yulong.intent.action.UW_STATE_CHANGE"

.field public static final ACTION_UW_STOP_SERVICE:Ljava/lang/String; = "yulong.intent.action.STOP_UW_SERVICE"

.field public static final ACTION_UW_TRY_SETUP_DATA:Ljava/lang/String; = "yulong.intent.action.UW_TRY_SETUP_DATA"

.field public static final ACTION_UW_TRY_SETUP_DATA_CHINATELE_TIP:Ljava/lang/String; = "yulong.intent.action.UW_TRY_SETUP_DATA_CHINATELE_TIP"

.field public static final ACTION_WIFI_OPERATE:Ljava/lang/String; = "yulong.inent.action.WIFI_OPERATE"

.field public static final ACTION_WIFI_OPERATE_RSP:Ljava/lang/String; = "yulong.inent.action.WIFI_OPERATE_RSP"

.field protected static final APN_DEFAULT_ID:I = 0x0

.field protected static final APN_DUN_ID:I = 0x3

.field protected static final APN_HIPRI_ID:I = 0x4

.field static final APN_ID:Ljava/lang/String; = "apn_id"

.field protected static final APN_INVALID_ID:I = -0x1

.field protected static final APN_MMS_ID:I = 0x1

.field protected static final APN_NUM_TYPES:I = 0x5

.field protected static final APN_SUPL_ID:I = 0x2

.field private static final CHINATELE_TIP_PROP:Ljava/lang/String; = "persist.sys.chinatele.tip"

.field private static final DBG:Z = true

.field private static final DISCONN_REASON_APN_SWITCHED:I = 0x5

.field private static final DISCONN_REASON_DATA_ENABLED:I = 0x6

.field private static final DISCONN_REASON_HANG_UP:I = 0x2

.field private static final DISCONN_REASON_NONE:I = 0x0

.field private static final DISCONN_REASON_UWD_FAIL_PERMANENT:I = 0x3

.field private static final DISCONN_REASON_UWD_FAIL_TEMP:I = 0x4

.field private static final DISCONN_REASON_WIFI_DISCONN:I = 0x1

.field public static final EVENT_APN_CHANGED:I = 0x9

.field public static final EVENT_CONNECT_FAIL:I = 0xb

.field public static final EVENT_CONNECT_SUCC:I = 0x6

.field public static final EVENT_DEFAULT_DATA_NETWORK_CHANGED:I = 0xa

.field public static final EVENT_DEREGISTER_SUCC:I = 0x8

.field public static final EVENT_DIAL_FAIL_REDIAL:I = 0xf

.field public static final EVENT_DISCONNECT_SUCC:I = 0x7

.field public static final EVENT_LINK_STATE_CHANGE:I = 0x1

.field public static final EVENT_REG_FAILED:I = 0x5

.field public static final EVENT_REG_SUCC:I = 0x4

.field public static final EVENT_RETRY_CLEAN_DATA:I = 0xd

.field public static final EVENT_RETRY_FINISH_SELECT_NET:I = 0xe

.field public static final EVENT_RETRY_SETUP_DATA:I = 0xc

.field public static final EVENT_WIFI_CONNECTED:I = 0x2

.field public static final EVENT_WIFI_DISCONNECT:I = 0x3

.field private static final E_CONNECTION_FAIL:I = 0x12e

.field private static final E_CONNECTION_SUCC:I = 0x12d

.field private static final E_DEREGISTER_FAIL:I = 0x68

.field private static final E_DEREGISTER_SUCC:I = 0x67

.field private static final E_DISCONNECTION_FAIL:I = 0x130

.field private static final E_DISCONNECTION_PROCESSING_AFTER_ERROR:I = 0x3e9

.field private static final E_DISCONNECTION_SUCC:I = 0x12f

.field private static final E_HANDOFF:I = 0x7d6

.field private static final E_HANDOFF_FAIL:I = 0x7d9

.field private static final E_HANDOFF_SUCC:I = 0x7d8

.field private static final E_HANDOFF_SUCC_CLEANUP:I = 0x7d7

.field private static final E_INITIALIZING:I = 0x7d1

.field private static final E_INVITING:I = 0x7d4

.field private static final E_NOTIFIED_TERMINATE:I = 0x69

.field private static final E_OPTIONS_FAIL:I = 0x6a

.field private static final E_OPTIONS_SUCC:I = 0x6b

.field private static final E_PS_CONN_FAIL:I = 0x6f

.field private static final E_PS_CONN_SUCC:I = 0x6e

.field private static final E_RECONNECT_PROCESSING:I = 0x3ea

.field private static final E_REDIRECTING:I = 0x7d3

.field private static final E_REGISTERING:I = 0x7d2

.field private static final E_REGISTER_FAIL:I = 0x66

.field private static final E_REGISTER_SUCC:I = 0x65

.field private static final E_SIP_DISCONNECTED:I = 0x7d5

.field private static final E_SUBSCRIBE_FAIL:I = 0x6c

.field private static final E_SUBSCRIBE_SUCC:I = 0x6d

.field private static final ICON_NETWORKS_AVAILABLE:I = 0x108058a

.field static final PREFERAPN_URI:Landroid/net/Uri;

.field private static final TAG:Ljava/lang/String; = "CP_COMM:CPUWDManager"

.field public static final TEST_MODE:Ljava/lang/String; = "test_mode"

.field private static final UW_CALL_MODE_CTC:I = 0x0

.field private static final UW_CALL_MODE_SIM:I = 0x1

.field private static final UW_CALL_MODE_UTVPN:I = 0x2

.field public static final UW_CONNECTED:I = 0x5

.field public static final UW_CONNECTING:I = 0x4

.field private static final UW_CONNECT_FAILED:I = 0x2

.field public static final UW_DEREGISTING:I = 0x7

.field private static final UW_DIAL_MODE_EVDO:I = 0x2

.field private static final UW_DIAL_MODE_NONE:I = 0x0

.field private static final UW_DIAL_MODE_SWITCH:I = 0x3

.field private static final UW_DIAL_MODE_UW:I = 0x1

.field public static final UW_DISCONNECTING:I = 0x6

.field public static final UW_IDLE:I = 0x1

.field public static final UW_NATIVE_SERVICE:Ljava/lang/String; = "uwd"

.field public static final UW_REGISTED:I = 0x3

.field public static final UW_REGISTING:I = 0x2

.field private static final UW_REGIST_FAILED:I = 0x1

.field public static final UW_STATE_KEY:Ljava/lang/String; = "state"

.field public static final UW_STATE_REASON_KEY:Ljava/lang/String; = "state_reason"

.field public static final WAG_IP:Ljava/lang/String; = "wag_ip"

.field public static final WIFI_CTCW_REQUEST_TAKEOVER:Ljava/lang/String; = "android.net.wifi.CTCW_REQUEST_TAKEOVER"

.field public static final WIFI_CTCW_STATE_CHANGED:Ljava/lang/String; = "android.net.wifi.WIFI_CTCW_STATE_CHANGED"

.field public static final WIFI_CTCW_STATE_CHANGED_TIP:Ljava/lang/String; = "android.net.wifi.WIFI_CTCW_STATE_CHANGED_TIP"

.field public static final WIFI_CTCW_TPA_READY:Ljava/lang/String; = "android.net.wifi.CTCW_TPA_READY"

.field public static final WIFI_CTCW_TPA_REQUEST:Ljava/lang/String; = "android.net.wifi.CTCW_TPA_REQUEST"

.field public static WIFI_CTCW_TPA_STATE:I = 0x0

.field public static final WIFI_OPERATE_CLOSE:I = 0x4

.field public static final WIFI_OPERATE_DISCONNECT:I = 0x1

.field public static final WIFI_OPERATE_FORGET:I = 0x2

.field public static final WIFI_OPERATE_NONE:I = 0x0

.field public static final WIFI_OPERATE_REASSOCIATE:I = 0x5

.field public static final WIFI_OPERATE_RSP:Ljava/lang/String; = "operate_rsp"

.field public static final WIFI_OPERATE_RSP_ERR:Ljava/lang/String; = "error_code"

.field public static final WIFI_OPERATE_SWITCH:I = 0x3

.field public static final WIFI_OPERATE_VALUE:Ljava/lang/String; = "operate"


# instance fields
.field private allApns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/dataconnection/ApnSetting;",
            ">;"
        }
    .end annotation
.end field

.field private apnObserver:Lcom/yulong/android/telephony/CPUWDManager$ApnChangeObserver;

.field private canReg:Z

.field private canSetPreferApn:Z

.field protected dataEnabled:[Z

.field private dataNetworkObserver:Lcom/yulong/android/telephony/CPUWDManager$DefaultDataNetworkChangeObserver;

.field protected enabledCount:I

.field protected mActiveApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

.field private mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

.field private mContext:Landroid/content/Context;

.field protected mDefaultDataConnection:I

.field private mDialFailRedialCount:I

.field private mDisconnectReason:I

.field private mHanveNotification:Z

.field private mIsApnActive:Z

.field private mNotification:Landroid/app/Notification;

.field protected mPreferredApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

.field private mRequestTearDown:Z

.field protected mRequestedApnType:Ljava/lang/String;

.field private mShouldRedial:Z

.field private mStateReceiver:Landroid/content/BroadcastReceiver;

.field private mTestMode:Z

.field private mUWService:Lcom/yulong/android/uwservice/IUWNativeService;

.field public mUwStatus:I

.field private mWagIP:Ljava/lang/String;

.field private mWagIPtmp:Ljava/lang/String;

.field mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiOperate:I

.field private waitingApns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/dataconnection/ApnSetting;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 153
    const/4 v0, 0x0

    sput v0, Lcom/yulong/android/telephony/CPUWDManager;->WIFI_CTCW_TPA_STATE:I

    .line 236
    const-string v0, "content://telephony/carriers/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/yulong/android/telephony/CPUWDManager;->PREFERAPN_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 948
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 218
    iput-object v3, p0, Lcom/yulong/android/telephony/CPUWDManager;->allApns:Ljava/util/ArrayList;

    .line 225
    iput-object v3, p0, Lcom/yulong/android/telephony/CPUWDManager;->waitingApns:Ljava/util/ArrayList;

    .line 235
    const-string v1, "default"

    iput-object v1, p0, Lcom/yulong/android/telephony/CPUWDManager;->mRequestedApnType:Ljava/lang/String;

    .line 238
    iput-boolean v2, p0, Lcom/yulong/android/telephony/CPUWDManager;->canSetPreferApn:Z

    .line 240
    iput-object v3, p0, Lcom/yulong/android/telephony/CPUWDManager;->mPreferredApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    .line 242
    const/4 v1, 0x5

    new-array v1, v1, [Z

    iput-object v1, p0, Lcom/yulong/android/telephony/CPUWDManager;->dataEnabled:[Z

    .line 243
    iput v2, p0, Lcom/yulong/android/telephony/CPUWDManager;->enabledCount:I

    .line 246
    iput-boolean v2, p0, Lcom/yulong/android/telephony/CPUWDManager;->mIsApnActive:Z

    .line 256
    iput-object v3, p0, Lcom/yulong/android/telephony/CPUWDManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 260
    iput v4, p0, Lcom/yulong/android/telephony/CPUWDManager;->mUwStatus:I

    .line 261
    iput v2, p0, Lcom/yulong/android/telephony/CPUWDManager;->mDisconnectReason:I

    .line 262
    iput-object v3, p0, Lcom/yulong/android/telephony/CPUWDManager;->mWagIP:Ljava/lang/String;

    .line 263
    iput-object v3, p0, Lcom/yulong/android/telephony/CPUWDManager;->mWagIPtmp:Ljava/lang/String;

    .line 264
    iput-boolean v2, p0, Lcom/yulong/android/telephony/CPUWDManager;->mTestMode:Z

    .line 265
    iput-boolean v2, p0, Lcom/yulong/android/telephony/CPUWDManager;->canReg:Z

    .line 267
    iput-boolean v2, p0, Lcom/yulong/android/telephony/CPUWDManager;->mRequestTearDown:Z

    .line 269
    iput v2, p0, Lcom/yulong/android/telephony/CPUWDManager;->mWifiOperate:I

    .line 271
    iput-object v3, p0, Lcom/yulong/android/telephony/CPUWDManager;->mNotification:Landroid/app/Notification;

    .line 272
    iput-boolean v2, p0, Lcom/yulong/android/telephony/CPUWDManager;->mHanveNotification:Z

    .line 273
    iput v2, p0, Lcom/yulong/android/telephony/CPUWDManager;->mDialFailRedialCount:I

    .line 274
    iput-boolean v2, p0, Lcom/yulong/android/telephony/CPUWDManager;->mShouldRedial:Z

    .line 301
    iput v4, p0, Lcom/yulong/android/telephony/CPUWDManager;->mDefaultDataConnection:I

    .line 949
    const-string v1, "CPUWDManager starting up"

    invoke-virtual {p0, v1}, Lcom/yulong/android/telephony/CPUWDManager;->LOGD(Ljava/lang/String;)V

    .line 950
    iput-object p1, p0, Lcom/yulong/android/telephony/CPUWDManager;->mContext:Landroid/content/Context;

    .line 952
    new-instance v1, Lcom/yulong/android/telephony/CPUWDManager$ApnChangeObserver;

    invoke-direct {v1, p0}, Lcom/yulong/android/telephony/CPUWDManager$ApnChangeObserver;-><init>(Lcom/yulong/android/telephony/CPUWDManager;)V

    iput-object v1, p0, Lcom/yulong/android/telephony/CPUWDManager;->apnObserver:Lcom/yulong/android/telephony/CPUWDManager$ApnChangeObserver;

    .line 953
    iget-object v1, p0, Lcom/yulong/android/telephony/CPUWDManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/yulong/android/telephony/CPUWDManager;->apnObserver:Lcom/yulong/android/telephony/CPUWDManager$ApnChangeObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 956
    new-instance v1, Lcom/yulong/android/telephony/CPUWDManager$DefaultDataNetworkChangeObserver;

    invoke-direct {v1, p0}, Lcom/yulong/android/telephony/CPUWDManager$DefaultDataNetworkChangeObserver;-><init>(Lcom/yulong/android/telephony/CPUWDManager;)V

    iput-object v1, p0, Lcom/yulong/android/telephony/CPUWDManager;->dataNetworkObserver:Lcom/yulong/android/telephony/CPUWDManager$DefaultDataNetworkChangeObserver;

    .line 957
    iget-object v1, p0, Lcom/yulong/android/telephony/CPUWDManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "default_data_network"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/yulong/android/telephony/CPUWDManager;->dataNetworkObserver:Lcom/yulong/android/telephony/CPUWDManager$DefaultDataNetworkChangeObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 960
    iget-object v1, p0, Lcom/yulong/android/telephony/CPUWDManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "default_data_network"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 962
    .local v0, "defaultDataNetwork":I
    iput v0, p0, Lcom/yulong/android/telephony/CPUWDManager;->mDefaultDataConnection:I

    .line 986
    iget-object v1, p0, Lcom/yulong/android/telephony/CPUWDManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v1, :cond_0

    .line 987
    iget-object v1, p0, Lcom/yulong/android/telephony/CPUWDManager;->mContext:Landroid/content/Context;

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/yulong/android/telephony/CPUWDManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 990
    :cond_0
    invoke-virtual {p0}, Lcom/yulong/android/telephony/CPUWDManager;->startMonitoring()V

    .line 993
    return-void
.end method

.method static synthetic access$102(Lcom/yulong/android/telephony/CPUWDManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/yulong/android/telephony/CPUWDManager;
    .param p1, "x1"    # Z

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/yulong/android/telephony/CPUWDManager;->mRequestTearDown:Z

    return p1
.end method

.method static synthetic access$200(Lcom/yulong/android/telephony/CPUWDManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/yulong/android/telephony/CPUWDManager;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/yulong/android/telephony/CPUWDManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/yulong/android/telephony/CPUWDManager;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/yulong/android/telephony/CPUWDManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/yulong/android/telephony/CPUWDManager;->isIpAddress(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/yulong/android/telephony/CPUWDManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/yulong/android/telephony/CPUWDManager;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/yulong/android/telephony/CPUWDManager;->mWagIP:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/yulong/android/telephony/CPUWDManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/yulong/android/telephony/CPUWDManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/yulong/android/telephony/CPUWDManager;->mWagIP:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/yulong/android/telephony/CPUWDManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/yulong/android/telephony/CPUWDManager;

    .prologue
    .line 56
    iget v0, p0, Lcom/yulong/android/telephony/CPUWDManager;->mWifiOperate:I

    return v0
.end method

.method static synthetic access$502(Lcom/yulong/android/telephony/CPUWDManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/yulong/android/telephony/CPUWDManager;
    .param p1, "x1"    # I

    .prologue
    .line 56
    iput p1, p0, Lcom/yulong/android/telephony/CPUWDManager;->mWifiOperate:I

    return p1
.end method

.method static synthetic access$600(Lcom/yulong/android/telephony/CPUWDManager;I)V
    .locals 0
    .param p0, "x0"    # Lcom/yulong/android/telephony/CPUWDManager;
    .param p1, "x1"    # I

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/yulong/android/telephony/CPUWDManager;->handleWifiReq(I)V

    return-void
.end method

.method private apnListToString(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/dataconnection/ApnSetting;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 454
    .local p1, "apns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/ApnSetting;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 455
    .local v1, "result":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, "size":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 456
    const/16 v3, 0x5b

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    invoke-virtual {v3}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x5d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 455
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 460
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private buildWaitingApns()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/dataconnection/ApnSetting;",
            ">;"
        }
    .end annotation

    .prologue
    .line 408
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 410
    .local v1, "apnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/ApnSetting;>;"
    const-string v4, "cdma.ruim.operator.numeric"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 411
    .local v3, "operator":Ljava/lang/String;
    iget-object v4, p0, Lcom/yulong/android/telephony/CPUWDManager;->mRequestedApnType:Ljava/lang/String;

    const-string v5, "default"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 412
    iget-boolean v4, p0, Lcom/yulong/android/telephony/CPUWDManager;->canSetPreferApn:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/yulong/android/telephony/CPUWDManager;->mPreferredApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    if-eqz v4, :cond_2

    .line 413
    const-string v4, "CP_COMM:CPUWDManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Preferred APN:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/yulong/android/telephony/CPUWDManager;->mPreferredApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    iget-object v6, v6, Lcom/android/internal/telephony/dataconnection/ApnSetting;->numeric:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/yulong/android/telephony/CPUWDManager;->mPreferredApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    iget-object v4, p0, Lcom/yulong/android/telephony/CPUWDManager;->mPreferredApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    iget-object v4, v4, Lcom/android/internal/telephony/dataconnection/ApnSetting;->numeric:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 416
    const-string v4, "CP_COMM:CPUWDManager"

    const-string v5, "Waiting APN set to preferred APN"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    iget-object v4, p0, Lcom/yulong/android/telephony/CPUWDManager;->mPreferredApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 433
    :cond_0
    return-object v1

    .line 420
    :cond_1
    const/4 v4, -0x1

    invoke-direct {p0, v4}, Lcom/yulong/android/telephony/CPUWDManager;->setPreferredApn(I)V

    .line 421
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/yulong/android/telephony/CPUWDManager;->mPreferredApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    .line 426
    :cond_2
    iget-object v4, p0, Lcom/yulong/android/telephony/CPUWDManager;->allApns:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    .line 427
    iget-object v4, p0, Lcom/yulong/android/telephony/CPUWDManager;->allApns:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    .line 428
    .local v0, "apn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    iget-object v4, p0, Lcom/yulong/android/telephony/CPUWDManager;->mRequestedApnType:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 429
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private createAllApnList()V
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 529
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yulong/android/telephony/CPUWDManager;->allApns:Ljava/util/ArrayList;

    .line 530
    const-string v0, "cdma.ruim.operator.numeric"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 531
    .local v9, "operator":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createAllApnList operator is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yulong/android/telephony/CPUWDManager;->LOGD(Ljava/lang/String;)V

    .line 533
    if-eqz v9, :cond_1

    .line 534
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "numeric = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 536
    .local v3, "selection":Ljava/lang/String;
    iget-object v0, p0, Lcom/yulong/android/telephony/CPUWDManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 539
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_1

    .line 540
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 541
    invoke-direct {p0, v7}, Lcom/yulong/android/telephony/CPUWDManager;->createApnList(Landroid/database/Cursor;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yulong/android/telephony/CPUWDManager;->allApns:Ljava/util/ArrayList;

    .line 550
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 554
    .end local v3    # "selection":Ljava/lang/String;
    .end local v7    # "cursor":Landroid/database/Cursor;
    :cond_1
    iget-object v0, p0, Lcom/yulong/android/telephony/CPUWDManager;->allApns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 555
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No APN found for carrier: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yulong/android/telephony/CPUWDManager;->LOGE(Ljava/lang/String;)V

    .line 556
    iput-object v2, p0, Lcom/yulong/android/telephony/CPUWDManager;->mPreferredApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    .line 579
    :cond_2
    :goto_0
    return-void

    .line 559
    :cond_3
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPUWDManager;->getPreferredApn()Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-result-object v0

    iput-object v0, p0, Lcom/yulong/android/telephony/CPUWDManager;->mPreferredApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    .line 560
    const-string v0, "CP_COMM:CPUWDManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Get PreferredAPN: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/yulong/android/telephony/CPUWDManager;->mPreferredApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    iget-object v0, p0, Lcom/yulong/android/telephony/CPUWDManager;->mPreferredApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/yulong/android/telephony/CPUWDManager;->mPreferredApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->numeric:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 562
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Reset PreferredAPN for operator = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yulong/android/telephony/CPUWDManager;->LOGD(Ljava/lang/String;)V

    .line 563
    iput-object v2, p0, Lcom/yulong/android/telephony/CPUWDManager;->mPreferredApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    .line 564
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/yulong/android/telephony/CPUWDManager;->setPreferredApn(I)V

    .line 567
    :cond_4
    iget-object v0, p0, Lcom/yulong/android/telephony/CPUWDManager;->mPreferredApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    if-nez v0, :cond_2

    .line 568
    iget-object v0, p0, Lcom/yulong/android/telephony/CPUWDManager;->allApns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    .line 569
    .local v6, "apn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    const-string v0, "default"

    invoke-virtual {v6, v0}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, v6, Lcom/android/internal/telephony/dataconnection/ApnSetting;->numeric:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 571
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "preferredApn is null, we choose a preferred APN:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yulong/android/telephony/CPUWDManager;->LOGD(Ljava/lang/String;)V

    .line 572
    iput-object v6, p0, Lcom/yulong/android/telephony/CPUWDManager;->mPreferredApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    .line 573
    iget-object v0, p0, Lcom/yulong/android/telephony/CPUWDManager;->mPreferredApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    iget v0, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->id:I

    invoke-direct {p0, v0}, Lcom/yulong/android/telephony/CPUWDManager;->setPreferredApn(I)V

    goto/16 :goto_0
.end method

.method private createApnList(Landroid/database/Cursor;)Ljava/util/ArrayList;
    .locals 21
    .param p1, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/dataconnection/ApnSetting;",
            ">;"
        }
    .end annotation

    .prologue
    .line 366
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 367
    .local v20, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/ApnSetting;>;"
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 369
    :cond_0
    const-string v3, "type"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/yulong/android/telephony/CPUWDManager;->parseTypes(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 372
    .local v15, "types":[Ljava/lang/String;
    new-instance v2, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    const-string v3, "_id"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const-string v4, "numeric"

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "name"

    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "apn"

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "proxy"

    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "port"

    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "mmsc"

    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "mmsproxy"

    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string v11, "mmsport"

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    const-string v12, "user"

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    const-string v13, "password"

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    const-string v14, "authtype"

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    const-string v16, "protocol"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    const-string v17, "roaming_protocol"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v17

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    const-string v18, "carrier_enabled"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v18

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_2

    const/16 v18, 0x1

    :goto_0
    const-string v19, "bearer"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    invoke-direct/range {v2 .. v19}, Lcom/android/internal/telephony/dataconnection/ApnSetting;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 393
    .local v2, "apn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 395
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 397
    .end local v2    # "apn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .end local v15    # "types":[Ljava/lang/String;
    :cond_1
    return-object v20

    .line 372
    .restart local v15    # "types":[Ljava/lang/String;
    :cond_2
    const/16 v18, 0x0

    goto :goto_0
.end method

.method private getNextApn()Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .locals 3

    .prologue
    .line 442
    iget-object v1, p0, Lcom/yulong/android/telephony/CPUWDManager;->waitingApns:Ljava/util/ArrayList;

    .line 443
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/ApnSetting;>;"
    const/4 v0, 0x0

    .line 445
    .local v0, "apn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    if-eqz v1, :cond_0

    .line 446
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 447
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "apn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    .line 450
    .restart local v0    # "apn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    :cond_0
    return-object v0
.end method

.method private getPreferredApn()Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v3, 0x0

    .line 481
    iget-object v0, p0, Lcom/yulong/android/telephony/CPUWDManager;->allApns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 482
    const-string v0, "apn list is empty"

    invoke-virtual {p0, v0}, Lcom/yulong/android/telephony/CPUWDManager;->LOGD(Ljava/lang/String;)V

    .line 515
    :goto_0
    return-object v3

    .line 486
    :cond_0
    iget-object v0, p0, Lcom/yulong/android/telephony/CPUWDManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/yulong/android/telephony/CPUWDManager;->PREFERAPN_URI:Landroid/net/Uri;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "_id"

    aput-object v4, v2, v10

    const-string v4, "name"

    aput-object v4, v2, v11

    const/4 v4, 0x2

    const-string v5, "apn"

    aput-object v5, v2, v4

    const-string v5, "name ASC"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 490
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 491
    iput-boolean v11, p0, Lcom/yulong/android/telephony/CPUWDManager;->canSetPreferApn:Z

    .line 492
    const-string v0, "can not set prefer apn null canSetPreferApn = true"

    invoke-virtual {p0, v0}, Lcom/yulong/android/telephony/CPUWDManager;->LOGD(Ljava/lang/String;)V

    .line 498
    :goto_1
    iget-boolean v0, p0, Lcom/yulong/android/telephony/CPUWDManager;->canSetPreferApn:Z

    if-eqz v0, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_3

    .line 500
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 501
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 502
    .local v9, "pos":I
    iget-object v0, p0, Lcom/yulong/android/telephony/CPUWDManager;->allApns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    .line 503
    .local v8, "p":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    iget v0, v8, Lcom/android/internal/telephony/dataconnection/ApnSetting;->id:I

    if-ne v0, v9, :cond_1

    iget-object v0, p0, Lcom/yulong/android/telephony/CPUWDManager;->mRequestedApnType:Ljava/lang/String;

    invoke-virtual {v8, v0}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 504
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 505
    const-string v0, "return prefer apn"

    invoke-virtual {p0, v0}, Lcom/yulong/android/telephony/CPUWDManager;->LOGD(Ljava/lang/String;)V

    move-object v3, v8

    .line 506
    goto :goto_0

    .line 494
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v8    # "p":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .end local v9    # "pos":I
    :cond_2
    iput-boolean v10, p0, Lcom/yulong/android/telephony/CPUWDManager;->canSetPreferApn:Z

    .line 495
    const-string v0, "can not set prefer apn null canSetPreferApn = false"

    invoke-virtual {p0, v0}, Lcom/yulong/android/telephony/CPUWDManager;->LOGD(Ljava/lang/String;)V

    goto :goto_1

    .line 511
    :cond_3
    if-eqz v6, :cond_4

    .line 512
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 514
    :cond_4
    const-string v0, "can not set prefer apn null"

    invoke-virtual {p0, v0}, Lcom/yulong/android/telephony/CPUWDManager;->LOGD(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handleWifiCloseReq()V
    .locals 7

    .prologue
    const/high16 v3, 0x4000000

    const/4 v6, 0x4

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 2249
    iget v2, p0, Lcom/yulong/android/telephony/CPUWDManager;->mUwStatus:I

    packed-switch v2, :pswitch_data_0

    .line 2301
    :cond_0
    :goto_0
    return-void

    .line 2251
    :pswitch_0
    iput v5, p0, Lcom/yulong/android/telephony/CPUWDManager;->mWifiOperate:I

    .line 2253
    new-instance v0, Landroid/content/Intent;

    const-string v2, "yulong.intent.action.UW_STATE_CHANGE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2254
    .local v0, "Localintent":Landroid/content/Intent;
    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2255
    const-string v2, "state"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2256
    iget-object v2, p0, Lcom/yulong/android/telephony/CPUWDManager;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2258
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "Localintent":Landroid/content/Intent;
    const-string v2, "yulong.inent.action.WIFI_OPERATE_RSP"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2259
    .restart local v0    # "Localintent":Landroid/content/Intent;
    const-string v2, "operate_rsp"

    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2260
    const-string v2, "error_code"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2261
    iget-object v2, p0, Lcom/yulong/android/telephony/CPUWDManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 2265
    .end local v0    # "Localintent":Landroid/content/Intent;
    :pswitch_1
    invoke-virtual {p0}, Lcom/yulong/android/telephony/CPUWDManager;->deregist()Z

    .line 2267
    invoke-direct {p0, v4}, Lcom/yulong/android/telephony/CPUWDManager;->setDetailState(I)V

    .line 2269
    new-instance v1, Landroid/content/Intent;

    const-string v2, "yulong.intent.action.UW_STATE_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2270
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2271
    const-string v2, "state"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2272
    iget-object v2, p0, Lcom/yulong/android/telephony/CPUWDManager;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2274
    iput v5, p0, Lcom/yulong/android/telephony/CPUWDManager;->mWifiOperate:I

    .line 2275
    new-instance v0, Landroid/content/Intent;

    const-string v2, "yulong.inent.action.WIFI_OPERATE_RSP"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2276
    .restart local v0    # "Localintent":Landroid/content/Intent;
    const-string v2, "operate_rsp"

    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2277
    const-string v2, "error_code"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2278
    iget-object v2, p0, Lcom/yulong/android/telephony/CPUWDManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 2281
    .end local v0    # "Localintent":Landroid/content/Intent;
    .end local v1    # "intent":Landroid/content/Intent;
    :pswitch_2
    invoke-virtual {p0}, Lcom/yulong/android/telephony/CPUWDManager;->deregist()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2282
    iput v5, p0, Lcom/yulong/android/telephony/CPUWDManager;->mWifiOperate:I

    .line 2283
    new-instance v0, Landroid/content/Intent;

    const-string v2, "yulong.inent.action.WIFI_OPERATE_RSP"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2284
    .restart local v0    # "Localintent":Landroid/content/Intent;
    const-string v2, "operate_rsp"

    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2285
    const-string v2, "error_code"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2286
    iget-object v2, p0, Lcom/yulong/android/telephony/CPUWDManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 2291
    .end local v0    # "Localintent":Landroid/content/Intent;
    :pswitch_3
    iput-boolean v4, p0, Lcom/yulong/android/telephony/CPUWDManager;->mRequestTearDown:Z

    .line 2292
    invoke-virtual {p0, v4}, Lcom/yulong/android/telephony/CPUWDManager;->cleanUpData(Z)V

    goto/16 :goto_0

    .line 2296
    :pswitch_4
    const-string v2, "handleWifiCloseReq do nothing"

    invoke-virtual {p0, v2}, Lcom/yulong/android/telephony/CPUWDManager;->LOGD(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2249
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method private handleWifiDisconnectReq()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/high16 v5, 0x4000000

    const/4 v4, 0x1

    .line 2077
    iget v2, p0, Lcom/yulong/android/telephony/CPUWDManager;->mUwStatus:I

    packed-switch v2, :pswitch_data_0

    .line 2132
    :cond_0
    :goto_0
    return-void

    .line 2079
    :pswitch_0
    iput v6, p0, Lcom/yulong/android/telephony/CPUWDManager;->mWifiOperate:I

    .line 2081
    new-instance v0, Landroid/content/Intent;

    const-string v2, "yulong.intent.action.UW_STATE_CHANGE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2082
    .local v0, "Localintent":Landroid/content/Intent;
    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2083
    const-string v2, "state"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2084
    iget-object v2, p0, Lcom/yulong/android/telephony/CPUWDManager;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2086
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "Localintent":Landroid/content/Intent;
    const-string v2, "yulong.inent.action.WIFI_OPERATE_RSP"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2087
    .restart local v0    # "Localintent":Landroid/content/Intent;
    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2088
    const-string v2, "operate_rsp"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2089
    const-string v2, "error_code"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2090
    iget-object v2, p0, Lcom/yulong/android/telephony/CPUWDManager;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0

    .line 2094
    .end local v0    # "Localintent":Landroid/content/Intent;
    :pswitch_1
    invoke-virtual {p0}, Lcom/yulong/android/telephony/CPUWDManager;->deregist()Z

    .line 2096
    invoke-direct {p0, v4}, Lcom/yulong/android/telephony/CPUWDManager;->setDetailState(I)V

    .line 2098
    new-instance v1, Landroid/content/Intent;

    const-string v2, "yulong.intent.action.UW_STATE_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2099
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2100
    const-string v2, "state"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2101
    iget-object v2, p0, Lcom/yulong/android/telephony/CPUWDManager;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2103
    iput v6, p0, Lcom/yulong/android/telephony/CPUWDManager;->mWifiOperate:I

    .line 2104
    new-instance v0, Landroid/content/Intent;

    const-string v2, "yulong.inent.action.WIFI_OPERATE_RSP"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2105
    .restart local v0    # "Localintent":Landroid/content/Intent;
    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2106
    const-string v2, "operate_rsp"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2107
    const-string v2, "error_code"

    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2108
    iget-object v2, p0, Lcom/yulong/android/telephony/CPUWDManager;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0

    .line 2111
    .end local v0    # "Localintent":Landroid/content/Intent;
    .end local v1    # "intent":Landroid/content/Intent;
    :pswitch_2
    invoke-virtual {p0}, Lcom/yulong/android/telephony/CPUWDManager;->deregist()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2112
    iput v6, p0, Lcom/yulong/android/telephony/CPUWDManager;->mWifiOperate:I

    .line 2113
    new-instance v0, Landroid/content/Intent;

    const-string v2, "yulong.inent.action.WIFI_OPERATE_RSP"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2114
    .restart local v0    # "Localintent":Landroid/content/Intent;
    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2115
    const-string v2, "operate_rsp"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2116
    const-string v2, "error_code"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2117
    iget-object v2, p0, Lcom/yulong/android/telephony/CPUWDManager;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_0

    .line 2122
    .end local v0    # "Localintent":Landroid/content/Intent;
    :pswitch_3
    iput-boolean v4, p0, Lcom/yulong/android/telephony/CPUWDManager;->mRequestTearDown:Z

    .line 2123
    invoke-virtual {p0, v4}, Lcom/yulong/android/telephony/CPUWDManager;->cleanUpData(Z)V

    goto/16 :goto_0

    .line 2127
    :pswitch_4
    const-string v2, "handleWifiDisconnectReq do nothing"

    invoke-virtual {p0, v2}, Lcom/yulong/android/telephony/CPUWDManager;->LOGD(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2077
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method private handleWifiForgetReq()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    const/high16 v5, 0x4000000

    const/4 v4, 0x1

    .line 2134
    iget v2, p0, Lcom/yulong/android/telephony/CPUWDManager;->mUwStatus:I

    packed-switch v2, :pswitch_data_0

    .line 2189
    :cond_0
    :goto_0
    return-void

    .line 2136
    :pswitch_0
    iput v6, p0, Lcom/yulong/android/telephony/CPUWDManager;->mWifiOperate:I

    .line 2138
    new-instance v0, Landroid/content/Intent;

    const-string v2, "yulong.intent.action.UW_STATE_CHANGE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2139
    .local v0, "Localintent":Landroid/content/Intent;
    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2140
    const-string v2, "state"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2141
    iget-object v2, p0, Lcom/yulong/android/telephony/CPUWDManager;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2143
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "Localintent":Landroid/content/Intent;
    const-string v2, "yulong.inent.action.WIFI_OPERATE_RSP"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2144
    .restart local v0    # "Localintent":Landroid/content/Intent;
    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2145
    const-string v2, "operate_rsp"

    invoke-virtual {v0, v2, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2146
    const-string v2, "error_code"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2147
    iget-object v2, p0, Lcom/yulong/android/telephony/CPUWDManager;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0

    .line 2151
    .end local v0    # "Localintent":Landroid/content/Intent;
    :pswitch_1
    invoke-virtual {p0}, Lcom/yulong/android/telephony/CPUWDManager;->deregist()Z

    .line 2153
    invoke-direct {p0, v4}, Lcom/yulong/android/telephony/CPUWDManager;->setDetailState(I)V

    .line 2155
    new-instance v1, Landroid/content/Intent;

    const-string v2, "yulong.intent.action.UW_STATE_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2156
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2157
    const-string v2, "state"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2158
    iget-object v2, p0, Lcom/yulong/android/telephony/CPUWDManager;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2160
    iput v6, p0, Lcom/yulong/android/telephony/CPUWDManager;->mWifiOperate:I

    .line 2161
    new-instance v0, Landroid/content/Intent;

    const-string v2, "yulong.inent.action.WIFI_OPERATE_RSP"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2162
    .restart local v0    # "Localintent":Landroid/content/Intent;
    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2163
    const-string v2, "operate_rsp"

    invoke-virtual {v0, v2, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2164
    const-string v2, "error_code"

    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2165
    iget-object v2, p0, Lcom/yulong/android/telephony/CPUWDManager;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0

    .line 2168
    .end local v0    # "Localintent":Landroid/content/Intent;
    .end local v1    # "intent":Landroid/content/Intent;
    :pswitch_2
    invoke-virtual {p0}, Lcom/yulong/android/telephony/CPUWDManager;->deregist()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2169
    iput v6, p0, Lcom/yulong/android/telephony/CPUWDManager;->mWifiOperate:I

    .line 2170
    new-instance v0, Landroid/content/Intent;

    const-string v2, "yulong.inent.action.WIFI_OPERATE_RSP"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2171
    .restart local v0    # "Localintent":Landroid/content/Intent;
    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2172
    const-string v2, "operate_rsp"

    invoke-virtual {v0, v2, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2173
    const-string v2, "error_code"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2174
    iget-object v2, p0, Lcom/yulong/android/telephony/CPUWDManager;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_0

    .line 2179
    .end local v0    # "Localintent":Landroid/content/Intent;
    :pswitch_3
    iput-boolean v4, p0, Lcom/yulong/android/telephony/CPUWDManager;->mRequestTearDown:Z

    .line 2180
    invoke-virtual {p0, v4}, Lcom/yulong/android/telephony/CPUWDManager;->cleanUpData(Z)V

    goto/16 :goto_0

    .line 2184
    :pswitch_4
    const-string v2, "handleWifiForgetReq do nothing"

    invoke-virtual {p0, v2}, Lcom/yulong/android/telephony/CPUWDManager;->LOGD(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2134
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method private handleWifiReassociateReq()V
    .locals 7

    .prologue
    const/high16 v3, 0x4000000

    const/4 v6, 0x5

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 2303
    iget v2, p0, Lcom/yulong/android/telephony/CPUWDManager;->mUwStatus:I

    packed-switch v2, :pswitch_data_0

    .line 2359
    :cond_0
    :goto_0
    return-void

    .line 2305
    :pswitch_0
    const-string v2, "handleWifiReassociateReq UW_IDLE"

    invoke-virtual {p0, v2}, Lcom/yulong/android/telephony/CPUWDManager;->LOGD(Ljava/lang/String;)V

    .line 2306
    iput v5, p0, Lcom/yulong/android/telephony/CPUWDManager;->mWifiOperate:I

    .line 2308
    new-instance v0, Landroid/content/Intent;

    const-string v2, "yulong.intent.action.UW_STATE_CHANGE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2309
    .local v0, "Localintent":Landroid/content/Intent;
    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2310
    const-string v2, "state"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2311
    iget-object v2, p0, Lcom/yulong/android/telephony/CPUWDManager;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2313
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "Localintent":Landroid/content/Intent;
    const-string v2, "yulong.inent.action.WIFI_OPERATE_RSP"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2314
    .restart local v0    # "Localintent":Landroid/content/Intent;
    const-string v2, "operate_rsp"

    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2315
    const-string v2, "error_code"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2316
    iget-object v2, p0, Lcom/yulong/android/telephony/CPUWDManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 2319
    .end local v0    # "Localintent":Landroid/content/Intent;
    :pswitch_1
    const-string v2, "handleWifiReassociateReq UW_REGISTING"

    invoke-virtual {p0, v2}, Lcom/yulong/android/telephony/CPUWDManager;->LOGD(Ljava/lang/String;)V

    .line 2321
    invoke-virtual {p0}, Lcom/yulong/android/telephony/CPUWDManager;->deregist()Z

    .line 2323
    invoke-direct {p0, v4}, Lcom/yulong/android/telephony/CPUWDManager;->setDetailState(I)V

    .line 2325
    new-instance v1, Landroid/content/Intent;

    const-string v2, "yulong.intent.action.UW_STATE_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2326
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2327
    const-string v2, "state"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2328
    iget-object v2, p0, Lcom/yulong/android/telephony/CPUWDManager;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2330
    iput v5, p0, Lcom/yulong/android/telephony/CPUWDManager;->mWifiOperate:I

    .line 2331
    new-instance v0, Landroid/content/Intent;

    const-string v2, "yulong.inent.action.WIFI_OPERATE_RSP"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2332
    .restart local v0    # "Localintent":Landroid/content/Intent;
    const-string v2, "operate_rsp"

    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2333
    const-string v2, "error_code"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2334
    iget-object v2, p0, Lcom/yulong/android/telephony/CPUWDManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 2337
    .end local v0    # "Localintent":Landroid/content/Intent;
    .end local v1    # "intent":Landroid/content/Intent;
    :pswitch_2
    const-string v2, "handleWifiReassociateReq UW_REGISTED"

    invoke-virtual {p0, v2}, Lcom/yulong/android/telephony/CPUWDManager;->LOGD(Ljava/lang/String;)V

    .line 2338
    invoke-virtual {p0}, Lcom/yulong/android/telephony/CPUWDManager;->deregist()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2339
    iput v5, p0, Lcom/yulong/android/telephony/CPUWDManager;->mWifiOperate:I

    .line 2340
    new-instance v0, Landroid/content/Intent;

    const-string v2, "yulong.inent.action.WIFI_OPERATE_RSP"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2341
    .restart local v0    # "Localintent":Landroid/content/Intent;
    const-string v2, "operate_rsp"

    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2342
    const-string v2, "error_code"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2343
    iget-object v2, p0, Lcom/yulong/android/telephony/CPUWDManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 2348
    .end local v0    # "Localintent":Landroid/content/Intent;
    :pswitch_3
    const-string v2, "handleWifiReassociateReq UW_CONNECTED"

    invoke-virtual {p0, v2}, Lcom/yulong/android/telephony/CPUWDManager;->LOGD(Ljava/lang/String;)V

    .line 2349
    iput-boolean v4, p0, Lcom/yulong/android/telephony/CPUWDManager;->mRequestTearDown:Z

    .line 2350
    invoke-virtual {p0, v4}, Lcom/yulong/android/telephony/CPUWDManager;->cleanUpData(Z)V

    goto/16 :goto_0

    .line 2354
    :pswitch_4
    const-string v2, "handleWifiReassociateReq do nothing"

    invoke-virtual {p0, v2}, Lcom/yulong/android/telephony/CPUWDManager;->LOGD(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2303
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method private handleWifiReq(I)V
    .locals 2
    .param p1, "operate"    # I

    .prologue
    .line 2049
    packed-switch p1, :pswitch_data_0

    .line 2075
    :goto_0
    :pswitch_0
    return-void

    .line 2053
    :pswitch_1
    const-string v0, "CP_COMM:CPUWDManager"

    const-string v1, "handleWifiReq WIFI_OPERATE_DISCONNECT"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2054
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPUWDManager;->handleWifiDisconnectReq()V

    goto :goto_0

    .line 2057
    :pswitch_2
    const-string v0, "CP_COMM:CPUWDManager"

    const-string v1, "handleWifiReq WIFI_OPERATE_FORGET"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2058
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPUWDManager;->handleWifiForgetReq()V

    goto :goto_0

    .line 2061
    :pswitch_3
    const-string v0, "CP_COMM:CPUWDManager"

    const-string v1, "handleWifiReq WIFI_OPERATE_SWITCH"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2062
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPUWDManager;->handleWifiSwitchReq()V

    goto :goto_0

    .line 2065
    :pswitch_4
    const-string v0, "CP_COMM:CPUWDManager"

    const-string v1, "handleWifiReq WIFI_OPERATE_CLOSE"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2066
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPUWDManager;->handleWifiCloseReq()V

    goto :goto_0

    .line 2069
    :pswitch_5
    const-string v0, "CP_COMM:CPUWDManager"

    const-string v1, "handleWifiReq WIFI_OPERATE_REASSOCIATE"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2070
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPUWDManager;->handleWifiReassociateReq()V

    goto :goto_0

    .line 2049
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private handleWifiSwitchReq()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x0

    const/high16 v5, 0x4000000

    const/4 v4, 0x1

    .line 2192
    iget v2, p0, Lcom/yulong/android/telephony/CPUWDManager;->mUwStatus:I

    packed-switch v2, :pswitch_data_0

    .line 2247
    :cond_0
    :goto_0
    return-void

    .line 2194
    :pswitch_0
    iput v6, p0, Lcom/yulong/android/telephony/CPUWDManager;->mWifiOperate:I

    .line 2196
    new-instance v0, Landroid/content/Intent;

    const-string v2, "yulong.intent.action.UW_STATE_CHANGE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2197
    .local v0, "Localintent":Landroid/content/Intent;
    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2198
    const-string v2, "state"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2199
    iget-object v2, p0, Lcom/yulong/android/telephony/CPUWDManager;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2201
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "Localintent":Landroid/content/Intent;
    const-string v2, "yulong.inent.action.WIFI_OPERATE_RSP"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2202
    .restart local v0    # "Localintent":Landroid/content/Intent;
    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2203
    const-string v2, "operate_rsp"

    invoke-virtual {v0, v2, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2204
    const-string v2, "error_code"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2205
    iget-object v2, p0, Lcom/yulong/android/telephony/CPUWDManager;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0

    .line 2209
    .end local v0    # "Localintent":Landroid/content/Intent;
    :pswitch_1
    invoke-virtual {p0}, Lcom/yulong/android/telephony/CPUWDManager;->deregist()Z

    .line 2211
    invoke-direct {p0, v4}, Lcom/yulong/android/telephony/CPUWDManager;->setDetailState(I)V

    .line 2213
    new-instance v1, Landroid/content/Intent;

    const-string v2, "yulong.intent.action.UW_STATE_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2214
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2215
    const-string v2, "state"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2216
    iget-object v2, p0, Lcom/yulong/android/telephony/CPUWDManager;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2218
    iput v6, p0, Lcom/yulong/android/telephony/CPUWDManager;->mWifiOperate:I

    .line 2219
    new-instance v0, Landroid/content/Intent;

    const-string v2, "yulong.inent.action.WIFI_OPERATE_RSP"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2220
    .restart local v0    # "Localintent":Landroid/content/Intent;
    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2221
    const-string v2, "operate_rsp"

    invoke-virtual {v0, v2, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2222
    const-string v2, "error_code"

    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2223
    iget-object v2, p0, Lcom/yulong/android/telephony/CPUWDManager;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0

    .line 2226
    .end local v0    # "Localintent":Landroid/content/Intent;
    .end local v1    # "intent":Landroid/content/Intent;
    :pswitch_2
    invoke-virtual {p0}, Lcom/yulong/android/telephony/CPUWDManager;->deregist()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2227
    iput v6, p0, Lcom/yulong/android/telephony/CPUWDManager;->mWifiOperate:I

    .line 2228
    new-instance v0, Landroid/content/Intent;

    const-string v2, "yulong.inent.action.WIFI_OPERATE_RSP"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2229
    .restart local v0    # "Localintent":Landroid/content/Intent;
    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2230
    const-string v2, "operate_rsp"

    invoke-virtual {v0, v2, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2231
    const-string v2, "error_code"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2232
    iget-object v2, p0, Lcom/yulong/android/telephony/CPUWDManager;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_0

    .line 2237
    .end local v0    # "Localintent":Landroid/content/Intent;
    :pswitch_3
    iput-boolean v4, p0, Lcom/yulong/android/telephony/CPUWDManager;->mRequestTearDown:Z

    .line 2238
    invoke-virtual {p0, v4}, Lcom/yulong/android/telephony/CPUWDManager;->cleanUpData(Z)V

    goto/16 :goto_0

    .line 2242
    :pswitch_4
    const-string v2, "handleWifiSwitchReq do nothing"

    invoke-virtual {p0, v2}, Lcom/yulong/android/telephony/CPUWDManager;->LOGD(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2192
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method private isDataAllowed()Z
    .locals 8

    .prologue
    const-wide/16 v6, 0xc8

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 708
    iget-object v4, p0, Lcom/yulong/android/telephony/CPUWDManager;->mContext:Landroid/content/Context;

    const-string v5, "connectivity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 712
    .local v1, "mCM":Landroid/net/ConnectivityManager;
    iget v4, p0, Lcom/yulong/android/telephony/CPUWDManager;->mDefaultDataConnection:I

    if-eq v4, v3, :cond_1

    .line 714
    const-string v4, "uwd is not allowed"

    invoke-virtual {p0, v4}, Lcom/yulong/android/telephony/CPUWDManager;->LOGD(Ljava/lang/String;)V

    .line 715
    iget v4, p0, Lcom/yulong/android/telephony/CPUWDManager;->mDefaultDataConnection:I

    if-eq v4, v3, :cond_0

    .line 716
    const-string v4, "uwd is not allowed,mDefaultDataConnection=%d,not%d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget v6, p0, Lcom/yulong/android/telephony/CPUWDManager;->mDefaultDataConnection:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/yulong/android/telephony/CPUWDManager;->LOGD(Ljava/lang/String;)V

    .line 752
    :cond_0
    :goto_0
    return v2

    .line 724
    :cond_1
    iget-object v4, p0, Lcom/yulong/android/telephony/CPUWDManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    .line 726
    .local v0, "SSID":Ljava/lang/String;
    if-nez v0, :cond_2

    .line 727
    const-string v4, "SSID IS NULL"

    invoke-virtual {p0, v4}, Lcom/yulong/android/telephony/CPUWDManager;->LOGD(Ljava/lang/String;)V

    .line 728
    invoke-static {v6, v7}, Landroid/os/SystemClock;->sleep(J)V

    .line 729
    iget-object v4, p0, Lcom/yulong/android/telephony/CPUWDManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    .line 730
    if-nez v0, :cond_2

    .line 731
    const-string v4, "is data allowed, and ssid is null1"

    invoke-virtual {p0, v4}, Lcom/yulong/android/telephony/CPUWDManager;->LOGD(Ljava/lang/String;)V

    .line 732
    invoke-static {v6, v7}, Landroid/os/SystemClock;->sleep(J)V

    .line 733
    iget-object v4, p0, Lcom/yulong/android/telephony/CPUWDManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    .line 734
    if-nez v0, :cond_2

    .line 736
    const-string v3, "is data allowed, and ssid is null2"

    invoke-virtual {p0, v3}, Lcom/yulong/android/telephony/CPUWDManager;->LOGD(Ljava/lang/String;)V

    goto :goto_0

    .line 741
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isDataAllowed SSID is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/yulong/android/telephony/CPUWDManager;->LOGD(Ljava/lang/String;)V

    .line 742
    const-string v4, "ChinaNet"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "ChinaNet_CW"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "ChinaNet_HomeCW"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 744
    const-string v3, "the connected ap is not telecomm"

    invoke-virtual {p0, v3}, Lcom/yulong/android/telephony/CPUWDManager;->LOGD(Ljava/lang/String;)V

    goto :goto_0

    .line 747
    :cond_3
    const/4 v4, 0x3

    iget v5, p0, Lcom/yulong/android/telephony/CPUWDManager;->mUwStatus:I

    if-eq v4, v5, :cond_4

    .line 748
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "the uwd state is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/yulong/android/telephony/CPUWDManager;->mUwStatus:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", we cannot setup data, regist first"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/yulong/android/telephony/CPUWDManager;->LOGD(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 751
    :cond_4
    const-string v2, "uwd is allowed"

    invoke-virtual {p0, v2}, Lcom/yulong/android/telephony/CPUWDManager;->LOGD(Ljava/lang/String;)V

    move v2, v3

    .line 752
    goto/16 :goto_0
.end method

.method private isIpAddress(Ljava/lang/String;)Z
    .locals 8
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    const/16 v7, 0x2e

    const/4 v5, 0x0

    .line 2369
    const/4 v4, 0x0

    .line 2370
    .local v4, "start":I
    invoke-virtual {p1, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 2371
    .local v2, "end":I
    const/4 v3, 0x0

    .line 2373
    .local v3, "numBlocks":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v4, v6, :cond_3

    .line 2375
    const/4 v6, -0x1

    if-ne v2, v6, :cond_0

    .line 2376
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 2380
    :cond_0
    :try_start_0
    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 2381
    .local v0, "block":I
    const/16 v6, 0xff

    if-gt v0, v6, :cond_1

    if-gez v0, :cond_2

    .line 2394
    .end local v0    # "block":I
    :cond_1
    :goto_1
    return v5

    .line 2384
    :catch_0
    move-exception v1

    .line 2385
    .local v1, "e":Ljava/lang/NumberFormatException;
    goto :goto_1

    .line 2388
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    .restart local v0    # "block":I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 2390
    add-int/lit8 v4, v2, 0x1

    .line 2391
    invoke-virtual {p1, v7, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    goto :goto_0

    .line 2394
    .end local v0    # "block":I
    :cond_3
    const/4 v6, 0x4

    if-ne v3, v6, :cond_1

    const/4 v5, 0x1

    goto :goto_1
.end method

.method private onApnChanged()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 585
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onApnChanged mUwStatus:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/yulong/android/telephony/CPUWDManager;->mUwStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yulong/android/telephony/CPUWDManager;->LOGD(Ljava/lang/String;)V

    .line 586
    iget v0, p0, Lcom/yulong/android/telephony/CPUWDManager;->mUwStatus:I

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/yulong/android/telephony/CPUWDManager;->mUwStatus:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    .line 638
    :cond_0
    :goto_0
    return-void

    .line 590
    :cond_1
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPUWDManager;->createAllApnList()V

    .line 592
    iget v0, p0, Lcom/yulong/android/telephony/CPUWDManager;->mUwStatus:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/yulong/android/telephony/CPUWDManager;->mUwStatus:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 596
    iget v0, p0, Lcom/yulong/android/telephony/CPUWDManager;->mUwStatus:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/yulong/android/telephony/CPUWDManager;->mUwStatus:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 597
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yulong/android/telephony/CPUWDManager;->mRequestTearDown:Z

    .line 598
    invoke-virtual {p0, v2}, Lcom/yulong/android/telephony/CPUWDManager;->cleanUpData(Z)V

    goto :goto_0
.end method

.method private onConnectFailed()V
    .locals 9

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x3

    const/4 v4, 0x1

    .line 1918
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onConnectFail and the uw state is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/yulong/android/telephony/CPUWDManager;->mUwStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/yulong/android/telephony/CPUWDManager;->LOGD(Ljava/lang/String;)V

    .line 1919
    new-instance v0, Landroid/content/Intent;

    const-string v2, "yulong.intent.action.UW_STATE_CHANGE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1920
    .local v0, "ConnectFailedintent":Landroid/content/Intent;
    iget v2, p0, Lcom/yulong/android/telephony/CPUWDManager;->mUwStatus:I

    packed-switch v2, :pswitch_data_0

    .line 1981
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 1930
    :pswitch_1
    invoke-direct {p0, v5}, Lcom/yulong/android/telephony/CPUWDManager;->setDetailState(I)V

    .line 1931
    const/high16 v2, 0x4000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1932
    const-string v2, "state"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1933
    const-string v2, "state_reason"

    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1934
    const-string v2, "send uw state change with connect fail"

    invoke-virtual {p0, v2}, Lcom/yulong/android/telephony/CPUWDManager;->LOGD(Ljava/lang/String;)V

    .line 1935
    iget-object v2, p0, Lcom/yulong/android/telephony/CPUWDManager;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1937
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "send uw state change with connect fail mWifiOperate = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/yulong/android/telephony/CPUWDManager;->mWifiOperate:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/yulong/android/telephony/CPUWDManager;->LOGD(Ljava/lang/String;)V

    .line 1938
    iget v2, p0, Lcom/yulong/android/telephony/CPUWDManager;->mWifiOperate:I

    if-eq v2, v4, :cond_1

    iget v2, p0, Lcom/yulong/android/telephony/CPUWDManager;->mWifiOperate:I

    if-eq v2, v6, :cond_1

    iget v2, p0, Lcom/yulong/android/telephony/CPUWDManager;->mWifiOperate:I

    if-eq v2, v5, :cond_1

    iget v2, p0, Lcom/yulong/android/telephony/CPUWDManager;->mWifiOperate:I

    if-eq v2, v7, :cond_1

    iget v2, p0, Lcom/yulong/android/telephony/CPUWDManager;->mWifiOperate:I

    if-ne v2, v8, :cond_0

    .line 1943
    :cond_1
    invoke-virtual {p0}, Lcom/yulong/android/telephony/CPUWDManager;->deregist()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1945
    new-instance v1, Landroid/content/Intent;

    const-string v2, "yulong.inent.action.WIFI_OPERATE_RSP"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1946
    .local v1, "Localintent":Landroid/content/Intent;
    iget v2, p0, Lcom/yulong/android/telephony/CPUWDManager;->mWifiOperate:I

    packed-switch v2, :pswitch_data_1

    .line 1967
    :goto_1
    const/high16 v2, 0x4000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1968
    const-string v2, "error_code"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1969
    iget-object v2, p0, Lcom/yulong/android/telephony/CPUWDManager;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1971
    const/4 v2, 0x0

    iput v2, p0, Lcom/yulong/android/telephony/CPUWDManager;->mWifiOperate:I

    goto :goto_0

    .line 1948
    :pswitch_2
    const-string v2, "operate_rsp"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1

    .line 1951
    :pswitch_3
    const-string v2, "operate_rsp"

    invoke-virtual {v1, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1

    .line 1954
    :pswitch_4
    const-string v2, "operate_rsp"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1

    .line 1957
    :pswitch_5
    const-string v2, "operate_rsp"

    invoke-virtual {v1, v2, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1958
    const-string v2, "error_code"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1959
    iget-object v2, p0, Lcom/yulong/android/telephony/CPUWDManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1962
    :pswitch_6
    const-string v2, "operate_rsp"

    invoke-virtual {v1, v2, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1

    .line 1920
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 1946
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private onDefaultDataChanged()V
    .locals 2

    .prologue
    .line 696
    const/4 v0, 0x5

    iget v1, p0, Lcom/yulong/android/telephony/CPUWDManager;->mUwStatus:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x4

    iget v1, p0, Lcom/yulong/android/telephony/CPUWDManager;->mUwStatus:I

    if-ne v0, v1, :cond_1

    .line 698
    :cond_0
    const-string v0, "on default data changed clean up data"

    invoke-virtual {p0, v0}, Lcom/yulong/android/telephony/CPUWDManager;->LOGD(Ljava/lang/String;)V

    .line 699
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yulong/android/telephony/CPUWDManager;->cleanUpData(Z)V

    .line 701
    :cond_1
    const-string v0, "send EVENT_DISCONNECT_SUCC"

    invoke-virtual {p0, v0}, Lcom/yulong/android/telephony/CPUWDManager;->LOGD(Ljava/lang/String;)V

    .line 702
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/yulong/android/telephony/CPUWDManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yulong/android/telephony/CPUWDManager;->sendMessage(Landroid/os/Message;)Z

    .line 703
    return-void
.end method

.method private onDefaultDataNetworkChanged()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 643
    const-string v3, "onDefaultDataNetworkChanged"

    invoke-virtual {p0, v3}, Lcom/yulong/android/telephony/CPUWDManager;->LOGD(Ljava/lang/String;)V

    .line 645
    iget-object v3, p0, Lcom/yulong/android/telephony/CPUWDManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "default_data_network"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 648
    .local v0, "defaultDataNetwork":I
    iget-object v3, p0, Lcom/yulong/android/telephony/CPUWDManager;->mContext:Landroid/content/Context;

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 650
    .local v1, "mCM":Landroid/net/ConnectivityManager;
    move v2, v0

    .line 652
    .local v2, "newDataConnection":I
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    if-eq v2, v5, :cond_2

    .line 653
    :cond_0
    const-string v3, "onDefaultDataNetworkChanged new connection is not cdma"

    invoke-virtual {p0, v3}, Lcom/yulong/android/telephony/CPUWDManager;->LOGD(Ljava/lang/String;)V

    .line 654
    iget v3, p0, Lcom/yulong/android/telephony/CPUWDManager;->mDefaultDataConnection:I

    if-eqz v3, :cond_1

    const/4 v3, 0x5

    iget v4, p0, Lcom/yulong/android/telephony/CPUWDManager;->mUwStatus:I

    if-ne v3, v4, :cond_1

    .line 655
    const-string v3, "The new connection is cdma start cleanning up data"

    invoke-virtual {p0, v3}, Lcom/yulong/android/telephony/CPUWDManager;->LOGD(Ljava/lang/String;)V

    .line 658
    const-string v3, "onDefaultDataNetworkChanged() c+w"

    invoke-virtual {p0, v3}, Lcom/yulong/android/telephony/CPUWDManager;->LOGD(Ljava/lang/String;)V

    .line 691
    :cond_1
    :goto_0
    iput v2, p0, Lcom/yulong/android/telephony/CPUWDManager;->mDefaultDataConnection:I

    .line 692
    return-void

    .line 662
    :cond_2
    const-string v3, "The new connection is cdma start setting up data"

    invoke-virtual {p0, v3}, Lcom/yulong/android/telephony/CPUWDManager;->LOGD(Ljava/lang/String;)V

    .line 664
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPUWDManager;->onDefaultDataChanged()V

    goto :goto_0
.end method

.method private onDisconnectDone(I)V
    .locals 2
    .param p1, "erroCode"    # I

    .prologue
    .line 1409
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDisconnectDone erro code is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yulong/android/telephony/CPUWDManager;->LOGD(Ljava/lang/String;)V

    .line 1410
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yulong/android/telephony/CPUWDManager;->mActiveApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    .line 1411
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yulong/android/telephony/CPUWDManager;->mIsApnActive:Z

    .line 1412
    const/4 v0, 0x3

    iput v0, p0, Lcom/yulong/android/telephony/CPUWDManager;->mUwStatus:I

    .line 1416
    invoke-direct {p0, p1}, Lcom/yulong/android/telephony/CPUWDManager;->retryAfterDisconnected(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1417
    invoke-virtual {p0}, Lcom/yulong/android/telephony/CPUWDManager;->trySetupData()Z

    .line 1420
    :cond_0
    return-void
.end method

.method private onRegistFailed()V
    .locals 6

    .prologue
    const/high16 v5, 0x4000000

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1983
    const-string v1, "notify that the regist result is fail"

    invoke-virtual {p0, v1}, Lcom/yulong/android/telephony/CPUWDManager;->LOGD(Ljava/lang/String;)V

    .line 1984
    new-instance v0, Landroid/content/Intent;

    const-string v1, "yulong.intent.action.UW_STATE_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1985
    .local v0, "Localintent":Landroid/content/Intent;
    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1986
    const-string v1, "state"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1987
    const-string v1, "state_reason"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1988
    iget-object v1, p0, Lcom/yulong/android/telephony/CPUWDManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1989
    invoke-direct {p0, v3}, Lcom/yulong/android/telephony/CPUWDManager;->setDetailState(I)V

    .line 1990
    const-string v1, "send uw regist request intent on regist failed"

    invoke-virtual {p0, v1}, Lcom/yulong/android/telephony/CPUWDManager;->LOGD(Ljava/lang/String;)V

    .line 1991
    const-string v1, "send uw regist request intent on regist failed ###"

    invoke-virtual {p0, v1}, Lcom/yulong/android/telephony/CPUWDManager;->LOGD(Ljava/lang/String;)V

    .line 1997
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "send uw regist request intent on regist failed mWifiOperate = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/yulong/android/telephony/CPUWDManager;->mWifiOperate:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/yulong/android/telephony/CPUWDManager;->LOGD(Ljava/lang/String;)V

    .line 1999
    iget v1, p0, Lcom/yulong/android/telephony/CPUWDManager;->mWifiOperate:I

    if-nez v1, :cond_0

    .line 2000
    const-string v1, "send uw regist WIFI_OPERATE_NONE"

    invoke-virtual {p0, v1}, Lcom/yulong/android/telephony/CPUWDManager;->LOGD(Ljava/lang/String;)V

    .line 2030
    :goto_0
    return-void

    .line 2002
    :cond_0
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "Localintent":Landroid/content/Intent;
    const-string v1, "yulong.inent.action.WIFI_OPERATE_RSP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2003
    .restart local v0    # "Localintent":Landroid/content/Intent;
    iget v1, p0, Lcom/yulong/android/telephony/CPUWDManager;->mWifiOperate:I

    packed-switch v1, :pswitch_data_0

    .line 2024
    :goto_1
    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2025
    const-string v1, "error_code"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2026
    iget-object v1, p0, Lcom/yulong/android/telephony/CPUWDManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2028
    iput v4, p0, Lcom/yulong/android/telephony/CPUWDManager;->mWifiOperate:I

    goto :goto_0

    .line 2005
    :pswitch_0
    const-string v1, "operate_rsp"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1

    .line 2008
    :pswitch_1
    const-string v1, "operate_rsp"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1

    .line 2011
    :pswitch_2
    const-string v1, "operate_rsp"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1

    .line 2014
    :pswitch_3
    const-string v1, "operate_rsp"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2015
    const-string v1, "error_code"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2016
    iget-object v1, p0, Lcom/yulong/android/telephony/CPUWDManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 2019
    :pswitch_4
    const-string v1, "operate_rsp"

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1

    .line 2003
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private parseTypes(Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .param p1, "types"    # Ljava/lang/String;

    .prologue
    .line 355
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 356
    :cond_0
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    .line 357
    .local v0, "result":[Ljava/lang/String;
    const/4 v1, 0x0

    const-string v2, "*"

    aput-object v2, v0, v1

    .line 361
    :goto_0
    return-object v0

    .line 359
    .end local v0    # "result":[Ljava/lang/String;
    :cond_1
    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "result":[Ljava/lang/String;
    goto :goto_0
.end method

.method private resolve(Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .param p1, "host"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v13, 0x4

    .line 1629
    new-instance v4, Ljava/net/Socket;

    const-string v8, "127.0.0.1"

    const/16 v9, 0x13ad

    invoke-direct {v4, v8, v9}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    .line 1630
    .local v4, "localSocket":Ljava/net/Socket;
    new-instance v3, Ljava/io/DataInputStream;

    invoke-virtual {v4}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v3, v8}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1631
    .local v3, "dis":Ljava/io/DataInputStream;
    invoke-virtual {v4}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    .line 1632
    .local v5, "os":Ljava/io/OutputStream;
    const/4 v2, 0x0

    .line 1633
    .local v2, "count_read":I
    if-eqz v4, :cond_0

    if-eqz v3, :cond_0

    if-nez v5, :cond_1

    .line 1648
    :cond_0
    :goto_0
    return-object v7

    .line 1636
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "dns:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1637
    .local v1, "cmd":Ljava/lang/String;
    new-array v0, v13, [B

    .line 1638
    .local v0, "buf":[B
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "%04X"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1639
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/io/OutputStream;->write([B)V

    .line 1640
    invoke-virtual {v3, v0}, Ljava/io/DataInputStream;->read([B)I

    move-result v6

    .line 1641
    .local v6, "read":I
    if-ne v6, v13, :cond_2

    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v0}, Ljava/lang/String;-><init>([B)V

    const-string v9, "OKAY"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 1642
    :cond_2
    const-string v8, "ADB FAILE"

    invoke-virtual {p0, v8}, Lcom/yulong/android/telephony/CPUWDManager;->LOGD(Ljava/lang/String;)V

    goto :goto_0

    .line 1646
    :cond_3
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    .line 1647
    invoke-virtual {v4}, Ljava/net/Socket;->close()V

    .line 1648
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    shr-int/lit8 v8, v2, 0x18

    and-int/lit16 v8, v8, 0xff

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    shr-int/lit8 v8, v2, 0x10

    and-int/lit16 v8, v8, 0xff

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    shr-int/lit8 v8, v2, 0x8

    and-int/lit16 v8, v8, 0xff

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    and-int/lit16 v8, v2, 0xff

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0
.end method

.method private retryAfterDisconnected(I)Z
    .locals 4
    .param p1, "reason"    # I

    .prologue
    const/4 v1, 0x0

    .line 1431
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "the reason is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mRequestTearDown:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/yulong/android/telephony/CPUWDManager;->mRequestTearDown:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/yulong/android/telephony/CPUWDManager;->LOGD(Ljava/lang/String;)V

    .line 1432
    const/4 v0, 0x0

    .line 1443
    .local v0, "isRetry":Z
    invoke-virtual {p0, p1}, Lcom/yulong/android/telephony/CPUWDManager;->isPermanentFailCause(I)Z

    move-result v2

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/yulong/android/telephony/CPUWDManager;->mRequestTearDown:Z

    if-eqz v2, :cond_1

    .line 1444
    :cond_0
    const-string v2, "cannot retry"

    invoke-virtual {p0, v2}, Lcom/yulong/android/telephony/CPUWDManager;->LOGD(Ljava/lang/String;)V

    .line 1445
    iput-boolean v1, p0, Lcom/yulong/android/telephony/CPUWDManager;->mRequestTearDown:Z

    .line 1448
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private setDetailState(I)V
    .locals 3
    .param p1, "UwdState"    # I

    .prologue
    const/4 v2, 0x0

    .line 1619
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set CPUWDManager status from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/yulong/android/telephony/CPUWDManager;->mUwStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yulong/android/telephony/CPUWDManager;->LOGD(Ljava/lang/String;)V

    .line 1620
    iput p1, p0, Lcom/yulong/android/telephony/CPUWDManager;->mUwStatus:I

    .line 1621
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1623
    iput v2, p0, Lcom/yulong/android/telephony/CPUWDManager;->mDialFailRedialCount:I

    .line 1624
    iput-boolean v2, p0, Lcom/yulong/android/telephony/CPUWDManager;->mShouldRedial:Z

    .line 1626
    :cond_0
    return-void
.end method

.method private setHttpProxy(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "httpProxy"    # Ljava/lang/String;
    .param p2, "httpPort"    # Ljava/lang/String;

    .prologue
    .line 1453
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setHttpProxy "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", httpPort "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yulong/android/telephony/CPUWDManager;->LOGD(Ljava/lang/String;)V

    .line 1454
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 1455
    :cond_0
    const-string v0, "net.gprs.http-proxy"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1463
    :goto_0
    return-void

    .line 1458
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    .line 1459
    :cond_2
    const-string p2, "8080"

    .line 1461
    :cond_3
    const-string v0, "net.gprs.http-proxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setNotificationConnected(Z)V
    .locals 11
    .param p1, "visible"    # Z

    .prologue
    const v10, 0x108058a

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 2398
    iget-object v4, p0, Lcom/yulong/android/telephony/CPUWDManager;->mContext:Landroid/content/Context;

    const-string v5, "notification"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 2401
    .local v2, "notificationManager":Landroid/app/NotificationManager;
    if-eqz p1, :cond_1

    .line 2403
    iget-object v4, p0, Lcom/yulong/android/telephony/CPUWDManager;->mNotification:Landroid/app/Notification;

    if-nez v4, :cond_0

    .line 2404
    new-instance v4, Landroid/app/Notification;

    invoke-direct {v4}, Landroid/app/Notification;-><init>()V

    iput-object v4, p0, Lcom/yulong/android/telephony/CPUWDManager;->mNotification:Landroid/app/Notification;

    .line 2405
    iget-object v4, p0, Lcom/yulong/android/telephony/CPUWDManager;->mNotification:Landroid/app/Notification;

    const-wide/16 v5, 0x0

    iput-wide v5, v4, Landroid/app/Notification;->when:J

    .line 2406
    iget-object v4, p0, Lcom/yulong/android/telephony/CPUWDManager;->mNotification:Landroid/app/Notification;

    iput v10, v4, Landroid/app/Notification;->icon:I

    .line 2407
    iget-object v4, p0, Lcom/yulong/android/telephony/CPUWDManager;->mNotification:Landroid/app/Notification;

    iget-object v5, p0, Lcom/yulong/android/telephony/CPUWDManager;->mContext:Landroid/content/Context;

    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.net.wifi.PICK_WIFI_NETWORK"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v5, v8, v6, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    iput-object v5, v4, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 2410
    iget-object v4, p0, Lcom/yulong/android/telephony/CPUWDManager;->mNotification:Landroid/app/Notification;

    iget v5, v4, Landroid/app/Notification;->defaults:I

    or-int/lit8 v5, v5, 0x1

    iput v5, v4, Landroid/app/Notification;->defaults:I

    .line 2412
    iget-object v4, p0, Lcom/yulong/android/telephony/CPUWDManager;->mContext:Landroid/content/Context;

    const v5, 0x1040659

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2413
    .local v3, "title":Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/yulong/android/telephony/CPUWDManager;->mContext:Landroid/content/Context;

    const v5, 0x104065a

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2415
    .local v1, "details":Ljava/lang/CharSequence;
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v4, p0, Lcom/yulong/android/telephony/CPUWDManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const v5, 0x10900ea

    invoke-direct {v0, v4, v5}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 2416
    .local v0, "contentView":Landroid/widget/RemoteViews;
    const v4, 0x10203e3

    invoke-virtual {v0, v4, v10}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 2417
    const v4, 0x10203e5

    invoke-virtual {v0, v4, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 2418
    const v4, 0x10203e4

    invoke-virtual {v0, v4, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 2419
    iget-object v4, p0, Lcom/yulong/android/telephony/CPUWDManager;->mNotification:Landroid/app/Notification;

    iput-object v0, v4, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 2422
    .end local v0    # "contentView":Landroid/widget/RemoteViews;
    .end local v1    # "details":Ljava/lang/CharSequence;
    .end local v3    # "title":Ljava/lang/CharSequence;
    :cond_0
    iget-object v4, p0, Lcom/yulong/android/telephony/CPUWDManager;->mNotification:Landroid/app/Notification;

    iget v4, v4, Landroid/app/Notification;->icon:I

    iget-object v5, p0, Lcom/yulong/android/telephony/CPUWDManager;->mNotification:Landroid/app/Notification;

    invoke-virtual {v2, v4, v5}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 2424
    iput-boolean v9, p0, Lcom/yulong/android/telephony/CPUWDManager;->mHanveNotification:Z

    .line 2431
    :goto_0
    return-void

    .line 2427
    :cond_1
    iget-object v4, p0, Lcom/yulong/android/telephony/CPUWDManager;->mNotification:Landroid/app/Notification;

    if-eqz v4, :cond_2

    iget-boolean v4, p0, Lcom/yulong/android/telephony/CPUWDManager;->mHanveNotification:Z

    if-ne v4, v9, :cond_2

    .line 2428
    iget-object v4, p0, Lcom/yulong/android/telephony/CPUWDManager;->mNotification:Landroid/app/Notification;

    iget v4, v4, Landroid/app/Notification;->icon:I

    invoke-virtual {v2, v4}, Landroid/app/NotificationManager;->cancel(I)V

    .line 2429
    :cond_2
    iput-boolean v8, p0, Lcom/yulong/android/telephony/CPUWDManager;->mHanveNotification:Z

    goto :goto_0
.end method

.method private setPreferredApn(I)V
    .locals 4
    .param p1, "pos"    # I

    .prologue
    const/4 v3, 0x0

    .line 464
    iget-boolean v2, p0, Lcom/yulong/android/telephony/CPUWDManager;->canSetPreferApn:Z

    if-nez v2, :cond_1

    .line 465
    const-string v2, "can not set prefer apn"

    invoke-virtual {p0, v2}, Lcom/yulong/android/telephony/CPUWDManager;->LOGD(Ljava/lang/String;)V

    .line 478
    :cond_0
    :goto_0
    return-void

    .line 469
    :cond_1
    iget-object v2, p0, Lcom/yulong/android/telephony/CPUWDManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 470
    .local v0, "resolver":Landroid/content/ContentResolver;
    sget-object v2, Lcom/yulong/android/telephony/CPUWDManager;->PREFERAPN_URI:Landroid/net/Uri;

    invoke-virtual {v0, v2, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 472
    if-ltz p1, :cond_0

    .line 473
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 474
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "apn_id"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 475
    sget-object v2, Lcom/yulong/android/telephony/CPUWDManager;->PREFERAPN_URI:Landroid/net/Uri;

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 476
    const-string v2, "set prefer apn insert end"

    invoke-virtual {p0, v2}, Lcom/yulong/android/telephony/CPUWDManager;->LOGD(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setupData()Z
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1321
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPUWDManager;->getNextApn()Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-result-object v0

    .line 1322
    .local v0, "apn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    if-nez v0, :cond_1

    .line 1369
    :cond_0
    :goto_0
    return v4

    .line 1325
    :cond_1
    iput-object v0, p0, Lcom/yulong/android/telephony/CPUWDManager;->mActiveApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    .line 1326
    iput-boolean v5, p0, Lcom/yulong/android/telephony/CPUWDManager;->mIsApnActive:Z

    .line 1335
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "proxy.gethost is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/yulong/android/telephony/CPUWDManager;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/net/Proxy;->getHost(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/yulong/android/telephony/CPUWDManager;->LOGD(Ljava/lang/String;)V

    .line 1336
    invoke-virtual {p0}, Lcom/yulong/android/telephony/CPUWDManager;->getUWNativeService()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1341
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "user is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->user:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", password is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->password:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/yulong/android/telephony/CPUWDManager;->LOGD(Ljava/lang/String;)V

    .line 1344
    const-string v6, "## setPowerModeCommand 1"

    invoke-virtual {p0, v6}, Lcom/yulong/android/telephony/CPUWDManager;->LOGD(Ljava/lang/String;)V

    .line 1347
    iget-object v6, p0, Lcom/yulong/android/telephony/CPUWDManager;->mUWService:Lcom/yulong/android/uwservice/IUWNativeService;

    iget-object v7, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->user:Ljava/lang/String;

    iget-object v8, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->password:Ljava/lang/String;

    invoke-interface {v6, v7, v8}, Lcom/yulong/android/uwservice/IUWNativeService;->UWMakeCall(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1356
    invoke-direct {p0, v9}, Lcom/yulong/android/telephony/CPUWDManager;->setDetailState(I)V

    .line 1357
    new-instance v2, Landroid/content/Intent;

    const-string v4, "yulong.intent.action.UW_STATE_CHANGE"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1358
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v4, 0x4000000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1359
    const-string v4, "state"

    invoke-virtual {v2, v4, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1360
    iget-object v4, p0, Lcom/yulong/android/telephony/CPUWDManager;->mContext:Landroid/content/Context;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v4, v2, v6}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1363
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.net.wifi.WIFI_CTCW_STATE_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1364
    .local v3, "intent1":Landroid/content/Intent;
    const-string v4, "CWState"

    const/16 v6, 0xd

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1365
    iget-object v4, p0, Lcom/yulong/android/telephony/CPUWDManager;->mContext:Landroid/content/Context;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v4, v3, v6}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    move v4, v5

    .line 1369
    goto/16 :goto_0

    .line 1348
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "intent1":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 1349
    .local v1, "e":Landroid/os/RemoteException;
    const-string v5, "trySetupData catch remote exception"

    invoke-virtual {p0, v5}, Lcom/yulong/android/telephony/CPUWDManager;->LOGE(Ljava/lang/String;)V

    .line 1350
    const-string v5, "** setPowerModeCommand 0"

    invoke-virtual {p0, v5}, Lcom/yulong/android/telephony/CPUWDManager;->LOGD(Ljava/lang/String;)V

    .line 1352
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0
.end method

.method private tearDown()V
    .locals 2

    .prologue
    .line 1394
    invoke-virtual {p0}, Lcom/yulong/android/telephony/CPUWDManager;->getUWNativeService()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1406
    :goto_0
    return-void

    .line 1399
    :cond_0
    :try_start_0
    const-string v1, "UWHangUpCall"

    invoke-virtual {p0, v1}, Lcom/yulong/android/telephony/CPUWDManager;->LOGD(Ljava/lang/String;)V

    .line 1400
    iget-object v1, p0, Lcom/yulong/android/telephony/CPUWDManager;->mUWService:Lcom/yulong/android/uwservice/IUWNativeService;

    invoke-interface {v1}, Lcom/yulong/android/uwservice/IUWNativeService;->UWHangUpCall()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1401
    :catch_0
    move-exception v0

    .line 1403
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "teardown catch remote exception"

    invoke-virtual {p0, v1}, Lcom/yulong/android/telephony/CPUWDManager;->LOGD(Ljava/lang/String;)V

    .line 1404
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method LOGD(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 2042
    const-string v0, "CP_COMM:CPUWDManager"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2043
    return-void
.end method

.method LOGE(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 2046
    const-string v0, "CP_COMM:CPUWDManager"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2047
    return-void
.end method

.method public cleanUpData(Z)V
    .locals 4
    .param p1, "tearDown"    # Z

    .prologue
    const/4 v3, 0x6

    .line 1373
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start cleanUpData with reason = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/yulong/android/telephony/CPUWDManager;->mDisconnectReason:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/yulong/android/telephony/CPUWDManager;->LOGD(Ljava/lang/String;)V

    .line 1374
    invoke-virtual {p0}, Lcom/yulong/android/telephony/CPUWDManager;->getUWNativeService()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1375
    const-string v1, "mUWService is null, get the native service again"

    invoke-virtual {p0, v1}, Lcom/yulong/android/telephony/CPUWDManager;->LOGE(Ljava/lang/String;)V

    .line 1391
    :cond_0
    :goto_0
    return-void

    .line 1378
    :cond_1
    invoke-direct {p0, v3}, Lcom/yulong/android/telephony/CPUWDManager;->setDetailState(I)V

    .line 1380
    new-instance v0, Landroid/content/Intent;

    const-string v1, "yulong.intent.action.UW_STATE_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1381
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1382
    const-string v1, "state"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1383
    iget-object v1, p0, Lcom/yulong/android/telephony/CPUWDManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1385
    if-eqz p1, :cond_0

    .line 1386
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPUWDManager;->tearDown()V

    goto :goto_0
.end method

.method public deregist()Z
    .locals 6

    .prologue
    const/4 v5, 0x7

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1243
    const-string v4, "start DeRegist uwd"

    invoke-virtual {p0, v4}, Lcom/yulong/android/telephony/CPUWDManager;->LOGD(Ljava/lang/String;)V

    .line 1245
    invoke-virtual {p0}, Lcom/yulong/android/telephony/CPUWDManager;->getUWNativeService()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1246
    const-string v4, "mUWService is null, get the native service again"

    invoke-virtual {p0, v4}, Lcom/yulong/android/telephony/CPUWDManager;->LOGE(Ljava/lang/String;)V

    .line 1251
    invoke-direct {p0, v3}, Lcom/yulong/android/telephony/CPUWDManager;->setDetailState(I)V

    .line 1269
    :goto_0
    return v2

    .line 1255
    :cond_0
    invoke-direct {p0, v5}, Lcom/yulong/android/telephony/CPUWDManager;->setDetailState(I)V

    .line 1257
    new-instance v1, Landroid/content/Intent;

    const-string v4, "yulong.intent.action.UW_STATE_CHANGE"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1258
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v4, 0x4000000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1259
    const-string v4, "state"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1260
    iget-object v4, p0, Lcom/yulong/android/telephony/CPUWDManager;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v4, v1, v5}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1262
    :try_start_0
    iget-object v4, p0, Lcom/yulong/android/telephony/CPUWDManager;->mUWService:Lcom/yulong/android/uwservice/IUWNativeService;

    invoke-interface {v4}, Lcom/yulong/android/uwservice/IUWNativeService;->UWDereg()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v3

    .line 1269
    goto :goto_0

    .line 1263
    :catch_0
    move-exception v0

    .line 1265
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "Deregist catch remote exception"

    invoke-virtual {p0, v3}, Lcom/yulong/android/telephony/CPUWDManager;->LOGE(Ljava/lang/String;)V

    .line 1266
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method dispatchLinkStateMsg(II)V
    .locals 8
    .param p1, "rasConnStats"    # I
    .param p2, "error"    # I

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x5

    const/4 v3, 0x0

    const/16 v5, 0xf

    const/4 v4, 0x1

    .line 1466
    const-string v2, "onCPUwdLinkStateChange"

    invoke-virtual {p0, v2}, Lcom/yulong/android/telephony/CPUWDManager;->LOGE(Ljava/lang/String;)V

    .line 1467
    invoke-virtual {p0, v5}, Lcom/yulong/android/telephony/CPUWDManager;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1468
    invoke-virtual {p0, v5}, Lcom/yulong/android/telephony/CPUWDManager;->removeMessages(I)V

    .line 1470
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 1610
    const-string v2, "onCPUwdLinkStateChange with default"

    invoke-virtual {p0, v2}, Lcom/yulong/android/telephony/CPUWDManager;->LOGE(Ljava/lang/String;)V

    .line 1615
    :cond_1
    :goto_0
    :sswitch_0
    return-void

    .line 1473
    :sswitch_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCPUwdLinkStateChange with E_REGISTER_SUCC mUwStatus = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/yulong/android/telephony/CPUWDManager;->mUwStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/yulong/android/telephony/CPUWDManager;->LOGE(Ljava/lang/String;)V

    .line 1474
    iget v2, p0, Lcom/yulong/android/telephony/CPUWDManager;->mUwStatus:I

    if-eq v2, v6, :cond_1

    .line 1475
    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/yulong/android/telephony/CPUWDManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1476
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1477
    iget-object v2, p0, Lcom/yulong/android/telephony/CPUWDManager;->mWagIP:Ljava/lang/String;

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/yulong/android/telephony/CPUWDManager;->mWagIPtmp:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 1479
    iget-object v2, p0, Lcom/yulong/android/telephony/CPUWDManager;->mWagIPtmp:Ljava/lang/String;

    iput-object v2, p0, Lcom/yulong/android/telephony/CPUWDManager;->mWagIP:Ljava/lang/String;

    .line 1481
    :cond_2
    iput-boolean v4, p0, Lcom/yulong/android/telephony/CPUWDManager;->mShouldRedial:Z

    goto :goto_0

    .line 1496
    .end local v0    # "msg":Landroid/os/Message;
    :sswitch_2
    const-string v2, "onCPUwdLinkStateChange with E_CONNECTION_FAIL"

    invoke-virtual {p0, v2}, Lcom/yulong/android/telephony/CPUWDManager;->LOGE(Ljava/lang/String;)V

    .line 1497
    iget-boolean v2, p0, Lcom/yulong/android/telephony/CPUWDManager;->mShouldRedial:Z

    if-ne v2, v4, :cond_3

    iget v2, p0, Lcom/yulong/android/telephony/CPUWDManager;->mDialFailRedialCount:I

    if-nez v2, :cond_3

    .line 1499
    const-string v2, "***************mShouldRedial == true && mDialFailRedialCount == 0"

    invoke-virtual {p0, v2}, Lcom/yulong/android/telephony/CPUWDManager;->LOGE(Ljava/lang/String;)V

    .line 1500
    const/4 v2, 0x3

    invoke-direct {p0, v2}, Lcom/yulong/android/telephony/CPUWDManager;->setDetailState(I)V

    .line 1501
    invoke-virtual {p0, v5}, Lcom/yulong/android/telephony/CPUWDManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1502
    .local v1, "msgrdial":Landroid/os/Message;
    const-wide/16 v2, 0xc8

    invoke-virtual {p0, v1, v2, v3}, Lcom/yulong/android/telephony/CPUWDManager;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 1505
    .end local v1    # "msgrdial":Landroid/os/Message;
    :cond_3
    const/16 v2, 0xb

    invoke-virtual {p0, v2}, Lcom/yulong/android/telephony/CPUWDManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1506
    .restart local v0    # "msg":Landroid/os/Message;
    const/16 v2, 0x12e

    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 1507
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1508
    iget-boolean v2, p0, Lcom/yulong/android/telephony/CPUWDManager;->mShouldRedial:Z

    if-ne v2, v4, :cond_1

    iget v2, p0, Lcom/yulong/android/telephony/CPUWDManager;->mDialFailRedialCount:I

    const/16 v3, 0x14

    if-ge v2, v3, :cond_1

    .line 1509
    invoke-virtual {p0, v5}, Lcom/yulong/android/telephony/CPUWDManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1510
    .restart local v1    # "msgrdial":Landroid/os/Message;
    const-wide/16 v2, 0xbb8

    invoke-virtual {p0, v1, v2, v3}, Lcom/yulong/android/telephony/CPUWDManager;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 1518
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "msgrdial":Landroid/os/Message;
    :sswitch_3
    const-string v2, "onCPUwdLinkStateChange with E_OPTIONS_FAIL"

    invoke-virtual {p0, v2}, Lcom/yulong/android/telephony/CPUWDManager;->LOGE(Ljava/lang/String;)V

    goto :goto_0

    .line 1532
    :sswitch_4
    const-string v2, "onCPUwdLinkStateChange with E_REGISTER_FAIL"

    invoke-virtual {p0, v2}, Lcom/yulong/android/telephony/CPUWDManager;->LOGE(Ljava/lang/String;)V

    .line 1533
    invoke-virtual {p0, v6}, Lcom/yulong/android/telephony/CPUWDManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1534
    .restart local v0    # "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 1539
    .end local v0    # "msg":Landroid/os/Message;
    :sswitch_5
    const-string v2, "onCPUwdLinkStateChange with E_DEREGISTER_SUCC"

    invoke-virtual {p0, v2}, Lcom/yulong/android/telephony/CPUWDManager;->LOGE(Ljava/lang/String;)V

    .line 1540
    invoke-virtual {p0, v7}, Lcom/yulong/android/telephony/CPUWDManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1541
    .restart local v0    # "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1542
    invoke-direct {p0, v3}, Lcom/yulong/android/telephony/CPUWDManager;->setNotificationConnected(Z)V

    goto/16 :goto_0

    .line 1547
    .end local v0    # "msg":Landroid/os/Message;
    :sswitch_6
    const-string v2, "onCPUwdLinkStateChange with E_DISCONNECTION_SUCC"

    invoke-virtual {p0, v2}, Lcom/yulong/android/telephony/CPUWDManager;->LOGE(Ljava/lang/String;)V

    .line 1548
    const/4 v2, 0x7

    invoke-virtual {p0, v2}, Lcom/yulong/android/telephony/CPUWDManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1549
    .restart local v0    # "msg":Landroid/os/Message;
    const/16 v2, 0x12f

    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 1550
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1551
    invoke-direct {p0, v3}, Lcom/yulong/android/telephony/CPUWDManager;->setNotificationConnected(Z)V

    goto/16 :goto_0

    .line 1559
    .end local v0    # "msg":Landroid/os/Message;
    :sswitch_7
    invoke-virtual {p0, v7}, Lcom/yulong/android/telephony/CPUWDManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1560
    .restart local v0    # "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1561
    const-string v2, "Deregist fail, now send wifi close intent for xiaoxiangyun"

    invoke-virtual {p0, v2}, Lcom/yulong/android/telephony/CPUWDManager;->LOGD(Ljava/lang/String;)V

    .line 1563
    const-string v2, "onCPUwdLinkStateChange with E_DEREGISTER_FAIL"

    invoke-virtual {p0, v2}, Lcom/yulong/android/telephony/CPUWDManager;->LOGE(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1568
    .end local v0    # "msg":Landroid/os/Message;
    :sswitch_8
    const-string v2, "onCPUwdLinkStateChange with E_OPTIONS_SUCC"

    invoke-virtual {p0, v2}, Lcom/yulong/android/telephony/CPUWDManager;->LOGE(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1571
    :sswitch_9
    const-string v2, "onCPUwdLinkStateChange with E_SUBSCRIBE_SUCC"

    invoke-virtual {p0, v2}, Lcom/yulong/android/telephony/CPUWDManager;->LOGE(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1574
    :sswitch_a
    const-string v2, "onCPUwdLinkStateChange with E_PS_CONN_SUCC"

    invoke-virtual {p0, v2}, Lcom/yulong/android/telephony/CPUWDManager;->LOGE(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1578
    :sswitch_b
    const-string v2, "onCPUwdLinkStateChange with E_CONNECTION_SUCC"

    invoke-virtual {p0, v2}, Lcom/yulong/android/telephony/CPUWDManager;->LOGE(Ljava/lang/String;)V

    .line 1579
    const/4 v2, 0x6

    invoke-virtual {p0, v2}, Lcom/yulong/android/telephony/CPUWDManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1580
    .restart local v0    # "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1581
    invoke-direct {p0, v4}, Lcom/yulong/android/telephony/CPUWDManager;->setNotificationConnected(Z)V

    .line 1582
    iput-boolean v3, p0, Lcom/yulong/android/telephony/CPUWDManager;->mShouldRedial:Z

    goto/16 :goto_0

    .line 1586
    .end local v0    # "msg":Landroid/os/Message;
    :sswitch_c
    const-string v2, "onCPUwdLinkStateChange with E_INITIALIZING"

    invoke-virtual {p0, v2}, Lcom/yulong/android/telephony/CPUWDManager;->LOGE(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1589
    :sswitch_d
    const-string v2, "onCPUwdLinkStateChange with E_REGISTERING"

    invoke-virtual {p0, v2}, Lcom/yulong/android/telephony/CPUWDManager;->LOGE(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1592
    :sswitch_e
    const-string v2, "onCPUwdLinkStateChange with E_REDIRECTING"

    invoke-virtual {p0, v2}, Lcom/yulong/android/telephony/CPUWDManager;->LOGE(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1595
    :sswitch_f
    const-string v2, "onCPUwdLinkStateChange with E_INVITING"

    invoke-virtual {p0, v2}, Lcom/yulong/android/telephony/CPUWDManager;->LOGE(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1598
    :sswitch_10
    const-string v2, "onCPUwdLinkStateChange with E_SIP_DISCONNECTED"

    invoke-virtual {p0, v2}, Lcom/yulong/android/telephony/CPUWDManager;->LOGE(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1601
    :sswitch_11
    const-string v2, "onCPUwdLinkStateChange with E_HANDOFF"

    invoke-virtual {p0, v2}, Lcom/yulong/android/telephony/CPUWDManager;->LOGE(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1604
    :sswitch_12
    const-string v2, "onCPUwdLinkStateChange with E_HANDOFF_SUCC_CLEANUP"

    invoke-virtual {p0, v2}, Lcom/yulong/android/telephony/CPUWDManager;->LOGE(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1607
    :sswitch_13
    const-string v2, "onCPUwdLinkStateChange with E_HANDOFF_SUCC"

    invoke-virtual {p0, v2}, Lcom/yulong/android/telephony/CPUWDManager;->LOGE(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1470
    nop

    :sswitch_data_0
    .sparse-switch
        0x65 -> :sswitch_1
        0x66 -> :sswitch_4
        0x67 -> :sswitch_5
        0x68 -> :sswitch_7
        0x6a -> :sswitch_3
        0x6b -> :sswitch_8
        0x6c -> :sswitch_4
        0x6d -> :sswitch_9
        0x6e -> :sswitch_a
        0x6f -> :sswitch_0
        0x12d -> :sswitch_b
        0x12e -> :sswitch_2
        0x12f -> :sswitch_6
        0x7d1 -> :sswitch_c
        0x7d2 -> :sswitch_d
        0x7d3 -> :sswitch_e
        0x7d4 -> :sswitch_f
        0x7d5 -> :sswitch_10
        0x7d6 -> :sswitch_11
        0x7d7 -> :sswitch_12
        0x7d8 -> :sswitch_13
        0x7d9 -> :sswitch_4
    .end sparse-switch
.end method

.method protected getActiveApnString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 341
    const/4 v0, 0x0

    .line 342
    .local v0, "result":Ljava/lang/String;
    iget-object v1, p0, Lcom/yulong/android/telephony/CPUWDManager;->mActiveApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    if-eqz v1, :cond_0

    .line 343
    iget-object v1, p0, Lcom/yulong/android/telephony/CPUWDManager;->mActiveApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    iget-object v0, v1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn:Ljava/lang/String;

    .line 345
    :cond_0
    return-object v0
.end method

.method protected getActiveApnTypes()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 330
    iget-object v1, p0, Lcom/yulong/android/telephony/CPUWDManager;->mActiveApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    if-eqz v1, :cond_0

    .line 331
    iget-object v1, p0, Lcom/yulong/android/telephony/CPUWDManager;->mActiveApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    iget-object v0, v1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->types:[Ljava/lang/String;

    .line 336
    .local v0, "result":[Ljava/lang/String;
    :goto_0
    return-object v0

    .line 333
    .end local v0    # "result":[Ljava/lang/String;
    :cond_0
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    .line 334
    .restart local v0    # "result":[Ljava/lang/String;
    const/4 v1, 0x0

    const-string v2, "default"

    aput-object v2, v0, v1

    goto :goto_0
.end method

.method public getUWNativeService()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 999
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/yulong/android/telephony/CPUWDManager;->mUWService:Lcom/yulong/android/uwservice/IUWNativeService;

    .line 1001
    const/16 v1, 0xa

    .line 1002
    .local v1, "count":I
    :goto_0
    if-lez v1, :cond_1

    .line 1003
    const-string v4, "uwservice"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1004
    .local v0, "binder":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 1005
    invoke-static {v0}, Lcom/yulong/android/uwservice/IUWNativeService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/yulong/android/uwservice/IUWNativeService;

    move-result-object v4

    iput-object v4, p0, Lcom/yulong/android/telephony/CPUWDManager;->mUWService:Lcom/yulong/android/uwservice/IUWNativeService;

    .line 1006
    const-string v4, "start  success"

    invoke-virtual {p0, v4}, Lcom/yulong/android/telephony/CPUWDManager;->LOGD(Ljava/lang/String;)V

    .line 1030
    .end local v0    # "binder":Landroid/os/IBinder;
    :goto_1
    return v3

    .line 1011
    .restart local v0    # "binder":Landroid/os/IBinder;
    :cond_0
    const-wide/16 v4, 0x1e

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1016
    :goto_2
    add-int/lit8 v1, v1, -0x1

    .line 1018
    goto :goto_0

    .line 1012
    :catch_0
    move-exception v2

    .line 1014
    .local v2, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    .line 1019
    .end local v0    # "binder":Landroid/os/IBinder;
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :cond_1
    if-nez v1, :cond_2

    .line 1020
    const-string v4, "ctl.start"

    const-string v5, "cw_service"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1021
    const-wide/16 v4, 0xc8

    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V

    .line 1022
    const-string v4, "uwservice"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1023
    .restart local v0    # "binder":Landroid/os/IBinder;
    if-eqz v0, :cond_2

    .line 1024
    invoke-static {v0}, Lcom/yulong/android/uwservice/IUWNativeService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/yulong/android/uwservice/IUWNativeService;

    move-result-object v4

    iput-object v4, p0, Lcom/yulong/android/telephony/CPUWDManager;->mUWService:Lcom/yulong/android/uwservice/IUWNativeService;

    .line 1025
    const-string v4, "start  success 2"

    invoke-virtual {p0, v4}, Lcom/yulong/android/telephony/CPUWDManager;->LOGD(Ljava/lang/String;)V

    goto :goto_1

    .line 1029
    .end local v0    # "binder":Landroid/os/IBinder;
    :cond_2
    const-string v3, "cannot start uwservice"

    invoke-virtual {p0, v3}, Lcom/yulong/android/telephony/CPUWDManager;->LOGD(Ljava/lang/String;)V

    .line 1030
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public getUwState()I
    .locals 1

    .prologue
    .line 2364
    iget v0, p0, Lcom/yulong/android/telephony/CPUWDManager;->mUwStatus:I

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v13, 0x5

    const/high16 v12, 0x4000000

    const/4 v11, 0x3

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 1657
    iget v7, p1, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_0

    .line 1912
    const-string v7, "receive unsupport event"

    invoke-virtual {p0, v7}, Lcom/yulong/android/telephony/CPUWDManager;->LOGE(Ljava/lang/String;)V

    .line 1915
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 1659
    :pswitch_1
    invoke-direct {p0, v10}, Lcom/yulong/android/telephony/CPUWDManager;->setNotificationConnected(Z)V

    .line 1660
    const-string v7, "++++++++++++SystemClock.sleep 1500"

    invoke-virtual {p0, v7}, Lcom/yulong/android/telephony/CPUWDManager;->LOGD(Ljava/lang/String;)V

    .line 1661
    const-wide/16 v7, 0x5dc

    invoke-static {v7, v8}, Landroid/os/SystemClock;->sleep(J)V

    .line 1662
    const-string v7, "------------SystemClock.sleep 1500"

    invoke-virtual {p0, v7}, Lcom/yulong/android/telephony/CPUWDManager;->LOGD(Ljava/lang/String;)V

    .line 1663
    invoke-virtual {p0}, Lcom/yulong/android/telephony/CPUWDManager;->onRegisterRequest()V

    goto :goto_0

    .line 1667
    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    const-string v7, "yulong.inent.action.WIFI_OPERATE_RSP"

    invoke-direct {v0, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1668
    .local v0, "Localintent":Landroid/content/Intent;
    const-string v7, "operate_rsp"

    invoke-virtual {v0, v7, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1669
    const-string v7, "error_code"

    invoke-virtual {v0, v7, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1670
    invoke-virtual {v0, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1671
    iget-object v7, p0, Lcom/yulong/android/telephony/CPUWDManager;->mContext:Landroid/content/Context;

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v7, v0, v8}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1672
    iput v10, p0, Lcom/yulong/android/telephony/CPUWDManager;->mWifiOperate:I

    .line 1674
    iget v7, p0, Lcom/yulong/android/telephony/CPUWDManager;->mUwStatus:I

    if-eq v9, v7, :cond_1

    .line 1676
    invoke-virtual {p0}, Lcom/yulong/android/telephony/CPUWDManager;->deregist()Z

    .line 1678
    :cond_1
    new-instance v2, Landroid/content/Intent;

    const-string v7, "yulong.intent.action.UW_STATE_CHANGE"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1679
    .local v2, "intent":Landroid/content/Intent;
    const-string v7, "state"

    invoke-virtual {v2, v7, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1680
    invoke-virtual {v2, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1681
    iget-object v7, p0, Lcom/yulong/android/telephony/CPUWDManager;->mContext:Landroid/content/Context;

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v7, v2, v8}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1682
    const-string v7, "handle EVENT_WIFI_DISCONNECT send broad cast "

    invoke-virtual {p0, v7}, Lcom/yulong/android/telephony/CPUWDManager;->LOGD(Ljava/lang/String;)V

    .line 1683
    invoke-direct {p0, v10}, Lcom/yulong/android/telephony/CPUWDManager;->setNotificationConnected(Z)V

    goto :goto_0

    .line 1692
    .end local v0    # "Localintent":Landroid/content/Intent;
    .end local v2    # "intent":Landroid/content/Intent;
    :pswitch_3
    const-string v7, "*** setPowerModeCommand 0"

    invoke-virtual {p0, v7}, Lcom/yulong/android/telephony/CPUWDManager;->LOGD(Ljava/lang/String;)V

    .line 1695
    invoke-direct {p0, v11}, Lcom/yulong/android/telephony/CPUWDManager;->setDetailState(I)V

    .line 1696
    new-instance v2, Landroid/content/Intent;

    const-string v7, "yulong.intent.action.UW_STATE_CHANGE"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1697
    .restart local v2    # "intent":Landroid/content/Intent;
    invoke-virtual {v2, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1698
    const-string v7, "state"

    invoke-virtual {v2, v7, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1699
    iget-object v7, p0, Lcom/yulong/android/telephony/CPUWDManager;->mContext:Landroid/content/Context;

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v7, v2, v8}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1702
    new-instance v3, Landroid/content/Intent;

    const-string v7, "android.net.wifi.WIFI_CTCW_STATE_CHANGED"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1703
    .local v3, "intent1":Landroid/content/Intent;
    const-string v7, "CWState"

    const/16 v8, 0xc

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1704
    iget-object v7, p0, Lcom/yulong/android/telephony/CPUWDManager;->mContext:Landroid/content/Context;

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v7, v3, v8}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1706
    sget v7, Lcom/yulong/android/telephony/CPUWDManager;->WIFI_CTCW_TPA_STATE:I

    if-ne v7, v9, :cond_2

    .line 1707
    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.net.wifi.CTCW_REQUEST_TAKEOVER"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1708
    .local v6, "mit":Landroid/content/Intent;
    iget-object v7, p0, Lcom/yulong/android/telephony/CPUWDManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1709
    const-string v7, "TPAState = 1 **************************************"

    invoke-virtual {p0, v7}, Lcom/yulong/android/telephony/CPUWDManager;->LOGD(Ljava/lang/String;)V

    .line 1722
    .end local v6    # "mit":Landroid/content/Intent;
    :goto_1
    const-string v7, "guopengfei EVENT_REG_SUCC"

    invoke-virtual {p0, v7}, Lcom/yulong/android/telephony/CPUWDManager;->LOGD(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1711
    :cond_2
    const-string v7, "TPAState = 0 ______________________________________"

    invoke-virtual {p0, v7}, Lcom/yulong/android/telephony/CPUWDManager;->LOGD(Ljava/lang/String;)V

    .line 1713
    const-string v7, "persist.sys.chinatele.tip"

    invoke-static {v7, v10}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v7

    if-nez v7, :cond_3

    .line 1714
    invoke-virtual {p0}, Lcom/yulong/android/telephony/CPUWDManager;->trySetupData()Z

    goto :goto_1

    .line 1716
    :cond_3
    new-instance v5, Landroid/content/Intent;

    const-string v7, "android.net.wifi.WIFI_CTCW_STATE_CHANGED_TIP"

    invoke-direct {v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1717
    .local v5, "it":Landroid/content/Intent;
    const-string v7, "CWState"

    const/16 v8, 0xc

    invoke-virtual {v5, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1718
    iget-object v7, p0, Lcom/yulong/android/telephony/CPUWDManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1719
    const-string v7, " sendBroadcast WIFI_CTCW_STATE_CHANGED_TIP"

    invoke-virtual {p0, v7}, Lcom/yulong/android/telephony/CPUWDManager;->LOGD(Ljava/lang/String;)V

    goto :goto_1

    .line 1726
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "intent1":Landroid/content/Intent;
    .end local v5    # "it":Landroid/content/Intent;
    :pswitch_4
    const-string v7, "**** setPowerModeCommand 0"

    invoke-virtual {p0, v7}, Lcom/yulong/android/telephony/CPUWDManager;->LOGD(Ljava/lang/String;)V

    .line 1729
    new-instance v3, Landroid/content/Intent;

    const-string v7, "android.net.wifi.WIFI_CTCW_STATE_CHANGED"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1730
    .restart local v3    # "intent1":Landroid/content/Intent;
    const-string v7, "CWState"

    const/16 v8, 0xb

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1731
    iget-object v7, p0, Lcom/yulong/android/telephony/CPUWDManager;->mContext:Landroid/content/Context;

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v7, v3, v8}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1734
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPUWDManager;->onRegistFailed()V

    goto/16 :goto_0

    .line 1737
    .end local v3    # "intent1":Landroid/content/Intent;
    :pswitch_5
    const-string v7, "***** setPowerModeCommand 0"

    invoke-virtual {p0, v7}, Lcom/yulong/android/telephony/CPUWDManager;->LOGD(Ljava/lang/String;)V

    .line 1740
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPUWDManager;->onConnectFailed()V

    goto/16 :goto_0

    .line 1744
    :pswitch_6
    const-string v7, "****** setPowerModeCommand 0"

    invoke-virtual {p0, v7}, Lcom/yulong/android/telephony/CPUWDManager;->LOGD(Ljava/lang/String;)V

    .line 1748
    invoke-direct {p0, v13}, Lcom/yulong/android/telephony/CPUWDManager;->setDetailState(I)V

    .line 1749
    new-instance v2, Landroid/content/Intent;

    const-string v7, "yulong.intent.action.UW_STATE_CHANGE"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1750
    .restart local v2    # "intent":Landroid/content/Intent;
    invoke-virtual {v2, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1751
    const-string v7, "state"

    invoke-virtual {v2, v7, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1752
    iget-object v7, p0, Lcom/yulong/android/telephony/CPUWDManager;->mContext:Landroid/content/Context;

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v7, v2, v8}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1755
    new-instance v2, Landroid/content/Intent;

    .end local v2    # "intent":Landroid/content/Intent;
    const-string v7, "android.intent.action.PROXY_CHANGE"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1756
    .restart local v2    # "intent":Landroid/content/Intent;
    iget-object v7, p0, Lcom/yulong/android/telephony/CPUWDManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1759
    new-instance v4, Landroid/content/Intent;

    const-string v7, "android.net.wifi.WIFI_CTCW_STATE_CHANGED"

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1760
    .local v4, "intent2":Landroid/content/Intent;
    const-string v7, "CWState"

    const/16 v8, 0xe

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1761
    iget-object v7, p0, Lcom/yulong/android/telephony/CPUWDManager;->mContext:Landroid/content/Context;

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v7, v4, v8}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_0

    .line 1767
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v4    # "intent2":Landroid/content/Intent;
    :pswitch_7
    const-string v7, "receiving disconnect event"

    invoke-virtual {p0, v7}, Lcom/yulong/android/telephony/CPUWDManager;->LOGD(Ljava/lang/String;)V

    .line 1768
    iget-object v7, p0, Lcom/yulong/android/telephony/CPUWDManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v1

    .line 1769
    .local v1, "SSID":Ljava/lang/String;
    if-nez v1, :cond_4

    .line 1770
    const-string v7, "SSID IS NULL"

    invoke-virtual {p0, v7}, Lcom/yulong/android/telephony/CPUWDManager;->LOGD(Ljava/lang/String;)V

    .line 1771
    const-wide/16 v7, 0xc8

    invoke-static {v7, v8}, Landroid/os/SystemClock;->sleep(J)V

    .line 1772
    iget-object v7, p0, Lcom/yulong/android/telephony/CPUWDManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v1

    .line 1773
    if-nez v1, :cond_4

    .line 1774
    const-string v7, "EVENT_DISCONNECT_SUCC, and ssid is null"

    invoke-virtual {p0, v7}, Lcom/yulong/android/telephony/CPUWDManager;->LOGD(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1778
    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "EVENT_DISCONNECT_SUCC SSID is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/yulong/android/telephony/CPUWDManager;->LOGD(Ljava/lang/String;)V

    .line 1779
    const-string v7, "ChinaNet"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    const-string v7, "ChinaNet_HomeCW"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    const-string v7, "ChinaNet_CW"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1782
    :cond_5
    invoke-direct {p0, v11}, Lcom/yulong/android/telephony/CPUWDManager;->setDetailState(I)V

    .line 1783
    new-instance v2, Landroid/content/Intent;

    const-string v7, "yulong.intent.action.UW_STATE_CHANGE"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1784
    .restart local v2    # "intent":Landroid/content/Intent;
    invoke-virtual {v2, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1785
    const-string v7, "state"

    invoke-virtual {v2, v7, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1786
    iget-object v7, p0, Lcom/yulong/android/telephony/CPUWDManager;->mContext:Landroid/content/Context;

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v7, v2, v8}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1787
    iget v7, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v7}, Lcom/yulong/android/telephony/CPUWDManager;->onDisconnectDone(I)V

    .line 1790
    new-instance v2, Landroid/content/Intent;

    .end local v2    # "intent":Landroid/content/Intent;
    const-string v7, "android.intent.action.PROXY_CHANGE"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1791
    .restart local v2    # "intent":Landroid/content/Intent;
    iget-object v7, p0, Lcom/yulong/android/telephony/CPUWDManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1794
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_6
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "EVENT_DISCONNECT_SUCC mWifiOperate = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/yulong/android/telephony/CPUWDManager;->mWifiOperate:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/yulong/android/telephony/CPUWDManager;->LOGD(Ljava/lang/String;)V

    .line 1796
    iget v7, p0, Lcom/yulong/android/telephony/CPUWDManager;->mWifiOperate:I

    if-eq v7, v9, :cond_7

    iget v7, p0, Lcom/yulong/android/telephony/CPUWDManager;->mWifiOperate:I

    const/4 v8, 0x2

    if-eq v7, v8, :cond_7

    iget v7, p0, Lcom/yulong/android/telephony/CPUWDManager;->mWifiOperate:I

    if-eq v7, v11, :cond_7

    iget v7, p0, Lcom/yulong/android/telephony/CPUWDManager;->mWifiOperate:I

    const/4 v8, 0x4

    if-eq v7, v8, :cond_7

    iget v7, p0, Lcom/yulong/android/telephony/CPUWDManager;->mWifiOperate:I

    if-ne v7, v13, :cond_0

    .line 1801
    :cond_7
    invoke-virtual {p0}, Lcom/yulong/android/telephony/CPUWDManager;->deregist()Z

    move-result v7

    if-nez v7, :cond_0

    .line 1803
    new-instance v0, Landroid/content/Intent;

    const-string v7, "yulong.inent.action.WIFI_OPERATE_RSP"

    invoke-direct {v0, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1804
    .restart local v0    # "Localintent":Landroid/content/Intent;
    iget v7, p0, Lcom/yulong/android/telephony/CPUWDManager;->mWifiOperate:I

    packed-switch v7, :pswitch_data_1

    .line 1825
    :goto_2
    invoke-virtual {v0, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1826
    const-string v7, "error_code"

    invoke-virtual {v0, v7, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1827
    iget-object v7, p0, Lcom/yulong/android/telephony/CPUWDManager;->mContext:Landroid/content/Context;

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v7, v0, v8}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1829
    iput v10, p0, Lcom/yulong/android/telephony/CPUWDManager;->mWifiOperate:I

    goto/16 :goto_0

    .line 1806
    :pswitch_8
    const-string v7, "operate_rsp"

    invoke-virtual {v0, v7, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_2

    .line 1809
    :pswitch_9
    const-string v7, "operate_rsp"

    const/4 v8, 0x2

    invoke-virtual {v0, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_2

    .line 1812
    :pswitch_a
    const-string v7, "operate_rsp"

    invoke-virtual {v0, v7, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_2

    .line 1815
    :pswitch_b
    const-string v7, "operate_rsp"

    const/4 v8, 0x4

    invoke-virtual {v0, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1816
    const-string v7, "error_code"

    invoke-virtual {v0, v7, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1817
    iget-object v7, p0, Lcom/yulong/android/telephony/CPUWDManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1820
    :pswitch_c
    const-string v7, "operate_rsp"

    invoke-virtual {v0, v7, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_2

    .line 1836
    .end local v0    # "Localintent":Landroid/content/Intent;
    .end local v1    # "SSID":Ljava/lang/String;
    :pswitch_d
    new-instance v2, Landroid/content/Intent;

    const-string v7, "yulong.intent.action.UW_STATE_CHANGE"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1837
    .restart local v2    # "intent":Landroid/content/Intent;
    invoke-virtual {v2, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1838
    const-string v7, "state"

    invoke-virtual {v2, v7, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1839
    iget-object v7, p0, Lcom/yulong/android/telephony/CPUWDManager;->mContext:Landroid/content/Context;

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v7, v2, v8}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1841
    invoke-direct {p0, v9}, Lcom/yulong/android/telephony/CPUWDManager;->setDetailState(I)V

    .line 1843
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Deregist success, mWifiOperate = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/yulong/android/telephony/CPUWDManager;->mWifiOperate:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/yulong/android/telephony/CPUWDManager;->LOGD(Ljava/lang/String;)V

    .line 1844
    iget v7, p0, Lcom/yulong/android/telephony/CPUWDManager;->mWifiOperate:I

    if-eq v7, v9, :cond_8

    iget v7, p0, Lcom/yulong/android/telephony/CPUWDManager;->mWifiOperate:I

    const/4 v8, 0x2

    if-eq v7, v8, :cond_8

    iget v7, p0, Lcom/yulong/android/telephony/CPUWDManager;->mWifiOperate:I

    if-eq v7, v11, :cond_8

    iget v7, p0, Lcom/yulong/android/telephony/CPUWDManager;->mWifiOperate:I

    const/4 v8, 0x4

    if-eq v7, v8, :cond_8

    iget v7, p0, Lcom/yulong/android/telephony/CPUWDManager;->mWifiOperate:I

    if-ne v7, v13, :cond_9

    .line 1850
    :cond_8
    new-instance v0, Landroid/content/Intent;

    const-string v7, "yulong.inent.action.WIFI_OPERATE_RSP"

    invoke-direct {v0, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1851
    .restart local v0    # "Localintent":Landroid/content/Intent;
    iget v7, p0, Lcom/yulong/android/telephony/CPUWDManager;->mWifiOperate:I

    packed-switch v7, :pswitch_data_2

    .line 1873
    :goto_3
    invoke-virtual {v0, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1874
    const-string v7, "error_code"

    invoke-virtual {v0, v7, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1875
    iget-object v7, p0, Lcom/yulong/android/telephony/CPUWDManager;->mContext:Landroid/content/Context;

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v7, v0, v8}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1878
    .end local v0    # "Localintent":Landroid/content/Intent;
    :cond_9
    iput v10, p0, Lcom/yulong/android/telephony/CPUWDManager;->mWifiOperate:I

    goto/16 :goto_0

    .line 1853
    .restart local v0    # "Localintent":Landroid/content/Intent;
    :pswitch_e
    const-string v7, "operate_rsp"

    invoke-virtual {v0, v7, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_3

    .line 1856
    :pswitch_f
    const-string v7, "operate_rsp"

    const/4 v8, 0x2

    invoke-virtual {v0, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_3

    .line 1859
    :pswitch_10
    const-string v7, "operate_rsp"

    invoke-virtual {v0, v7, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_3

    .line 1862
    :pswitch_11
    const-string v7, "operate_rsp"

    const/4 v8, 0x4

    invoke-virtual {v0, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1863
    const-string v7, "error_code"

    invoke-virtual {v0, v7, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1864
    iget-object v7, p0, Lcom/yulong/android/telephony/CPUWDManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1865
    iput v10, p0, Lcom/yulong/android/telephony/CPUWDManager;->mWifiOperate:I

    goto/16 :goto_0

    .line 1868
    :pswitch_12
    const-string v7, "operate_rsp"

    invoke-virtual {v0, v7, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_3

    .line 1882
    .end local v0    # "Localintent":Landroid/content/Intent;
    .end local v2    # "intent":Landroid/content/Intent;
    :pswitch_13
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPUWDManager;->onApnChanged()V

    goto/16 :goto_0

    .line 1885
    :pswitch_14
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPUWDManager;->onDefaultDataNetworkChanged()V

    goto/16 :goto_0

    .line 1888
    :pswitch_15
    const-string v7, "EVENT_RETRY_SETUP_DATA"

    invoke-virtual {p0, v7}, Lcom/yulong/android/telephony/CPUWDManager;->LOGD(Ljava/lang/String;)V

    .line 1889
    invoke-virtual {p0}, Lcom/yulong/android/telephony/CPUWDManager;->trySetupData()Z

    goto/16 :goto_0

    .line 1892
    :pswitch_16
    const-string v7, "EVENT_RETRY_CLEAN_DATA"

    invoke-virtual {p0, v7}, Lcom/yulong/android/telephony/CPUWDManager;->LOGD(Ljava/lang/String;)V

    .line 1893
    iget v7, p0, Lcom/yulong/android/telephony/CPUWDManager;->mUwStatus:I

    const/4 v8, 0x4

    if-eq v7, v8, :cond_a

    iget v7, p0, Lcom/yulong/android/telephony/CPUWDManager;->mUwStatus:I

    if-ne v7, v13, :cond_0

    .line 1894
    :cond_a
    iput-boolean v9, p0, Lcom/yulong/android/telephony/CPUWDManager;->mRequestTearDown:Z

    .line 1895
    invoke-virtual {p0, v9}, Lcom/yulong/android/telephony/CPUWDManager;->cleanUpData(Z)V

    goto/16 :goto_0

    .line 1899
    :pswitch_17
    const-string v7, "EVENT_RETRY_FINISH_SELECT_NET"

    invoke-virtual {p0, v7}, Lcom/yulong/android/telephony/CPUWDManager;->LOGD(Ljava/lang/String;)V

    .line 1900
    iput-boolean v9, p0, Lcom/yulong/android/telephony/CPUWDManager;->canReg:Z

    .line 1901
    iget v7, p0, Lcom/yulong/android/telephony/CPUWDManager;->mUwStatus:I

    if-ne v7, v9, :cond_0

    .line 1902
    invoke-virtual {p0}, Lcom/yulong/android/telephony/CPUWDManager;->onRegisterRequest()V

    goto/16 :goto_0

    .line 1905
    :pswitch_18
    const-string v7, "EVENT_DIAL_FAIL_REDIAL"

    invoke-virtual {p0, v7}, Lcom/yulong/android/telephony/CPUWDManager;->LOGD(Ljava/lang/String;)V

    .line 1906
    iget v7, p0, Lcom/yulong/android/telephony/CPUWDManager;->mUwStatus:I

    if-ne v7, v11, :cond_0

    iget v7, p0, Lcom/yulong/android/telephony/CPUWDManager;->mDialFailRedialCount:I

    const/16 v8, 0x14

    if-ge v7, v8, :cond_0

    iget-boolean v7, p0, Lcom/yulong/android/telephony/CPUWDManager;->mShouldRedial:Z

    if-ne v7, v9, :cond_0

    .line 1907
    iget v7, p0, Lcom/yulong/android/telephony/CPUWDManager;->mDialFailRedialCount:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/yulong/android/telephony/CPUWDManager;->mDialFailRedialCount:I

    .line 1908
    invoke-virtual {p0}, Lcom/yulong/android/telephony/CPUWDManager;->trySetupData()Z

    goto/16 :goto_0

    .line 1657
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_7
        :pswitch_d
        :pswitch_13
        :pswitch_14
        :pswitch_5
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
    .end packed-switch

    .line 1804
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch

    .line 1851
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
    .end packed-switch
.end method

.method protected isApnTypeActive(Ljava/lang/String;)Z
    .locals 1
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 306
    iget-object v0, p0, Lcom/yulong/android/telephony/CPUWDManager;->mActiveApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yulong/android/telephony/CPUWDManager;->mActiveApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isApnTypeAvailable(Ljava/lang/String;)Z
    .locals 3
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 315
    iget-object v2, p0, Lcom/yulong/android/telephony/CPUWDManager;->allApns:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 316
    iget-object v2, p0, Lcom/yulong/android/telephony/CPUWDManager;->allApns:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    .line 317
    .local v0, "apn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 318
    const/4 v2, 0x1

    .line 322
    .end local v0    # "apn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .end local v1    # "i$":Ljava/util/Iterator;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method isPermanentFailCause(I)Z
    .locals 1
    .param p1, "error"    # I

    .prologue
    .line 1425
    const/4 v0, 0x0

    return v0
.end method

.method public onRegisterRequest()V
    .locals 12

    .prologue
    .line 1070
    const/4 v2, -0x1

    .line 1071
    .local v2, "cNetCdmaStatus":I
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->getDefault()Lcom/yulong/android/internal/telephony/PhoneModeManager;

    move-result-object v6

    .line 1077
    .local v6, "mPhone":Lcom/yulong/android/internal/telephony/PhoneModeManager;
    invoke-virtual {p0}, Lcom/yulong/android/telephony/CPUWDManager;->getUwState()I

    move-result v8

    .line 1078
    .local v8, "uwState":I
    const/4 v10, 0x1

    if-ge v10, v8, :cond_0

    const/4 v10, 0x6

    if-ge v8, v10, :cond_0

    .line 1080
    const-string v10, "getUwState() == UW_REGISTING!"

    invoke-virtual {p0, v10}, Lcom/yulong/android/telephony/CPUWDManager;->LOGE(Ljava/lang/String;)V

    .line 1239
    :goto_0
    return-void

    .line 1083
    :cond_0
    const/4 v10, 0x1

    invoke-virtual {v6, v10}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->isActivePhoneByPhoneId(I)I

    move-result v2

    .line 1084
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onRegisterRequest cNetCdmaStatus:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/yulong/android/telephony/CPUWDManager;->LOGD(Ljava/lang/String;)V

    .line 1085
    const/4 v10, 0x2

    if-ne v10, v2, :cond_1

    iget-boolean v10, p0, Lcom/yulong/android/telephony/CPUWDManager;->canReg:Z

    if-nez v10, :cond_2

    .line 1086
    :cond_1
    const-string v10, "canReg == false !!!"

    invoke-virtual {p0, v10}, Lcom/yulong/android/telephony/CPUWDManager;->LOGE(Ljava/lang/String;)V

    goto :goto_0

    .line 1090
    :cond_2
    iget-object v10, p0, Lcom/yulong/android/telephony/CPUWDManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v10}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v9

    .line 1092
    .local v9, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-nez v9, :cond_3

    .line 1093
    const-string v10, "CPUwdRegist cannot get wifiinfo!"

    invoke-virtual {p0, v10}, Lcom/yulong/android/telephony/CPUWDManager;->LOGE(Ljava/lang/String;)V

    goto :goto_0

    .line 1096
    :cond_3
    invoke-virtual {v9}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v1

    .line 1097
    .local v1, "SSID":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v7

    .line 1098
    .local v7, "szNodeMac":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v5

    .line 1100
    .local v5, "ipAddress":I
    if-nez v1, :cond_4

    .line 1101
    const-wide/16 v10, 0xc8

    invoke-static {v10, v11}, Landroid/os/SystemClock;->sleep(J)V

    .line 1102
    iget-object v10, p0, Lcom/yulong/android/telephony/CPUWDManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v10}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v1

    .line 1103
    if-nez v1, :cond_4

    .line 1104
    const-wide/16 v10, 0x12c

    invoke-static {v10, v11}, Landroid/os/SystemClock;->sleep(J)V

    .line 1105
    iget-object v10, p0, Lcom/yulong/android/telephony/CPUWDManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v10}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v1

    .line 1106
    if-nez v1, :cond_4

    .line 1107
    const-string v10, "onRegisterRequest ssid is null"

    invoke-virtual {p0, v10}, Lcom/yulong/android/telephony/CPUWDManager;->LOGD(Ljava/lang/String;)V

    goto :goto_0

    .line 1113
    :cond_4
    if-nez v7, :cond_5

    .line 1114
    const-wide/16 v10, 0xc8

    invoke-static {v10, v11}, Landroid/os/SystemClock;->sleep(J)V

    .line 1115
    iget-object v10, p0, Lcom/yulong/android/telephony/CPUWDManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v10}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v7

    .line 1116
    if-nez v7, :cond_5

    .line 1117
    const-wide/16 v10, 0xc8

    invoke-static {v10, v11}, Landroid/os/SystemClock;->sleep(J)V

    .line 1118
    iget-object v10, p0, Lcom/yulong/android/telephony/CPUWDManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v10}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v7

    .line 1119
    if-nez v7, :cond_5

    .line 1120
    const-string v10, "onRegisterRequest cannot get szNodeMac"

    invoke-virtual {p0, v10}, Lcom/yulong/android/telephony/CPUWDManager;->LOGE(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1125
    :cond_5
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "receive register request and the ssid is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/yulong/android/telephony/CPUWDManager;->LOGD(Ljava/lang/String;)V

    .line 1126
    const-string v10, "ChinaNet"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6

    const-string v10, "ChinaNet_CW"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6

    const-string v10, "ChinaNet_HomeCW"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6

    .line 1128
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "stop registing and the ssid is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/yulong/android/telephony/CPUWDManager;->LOGD(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1131
    :cond_6
    const-string v10, "start regist c+w"

    invoke-virtual {p0, v10}, Lcom/yulong/android/telephony/CPUWDManager;->LOGD(Ljava/lang/String;)V

    .line 1133
    new-instance v4, Landroid/content/Intent;

    const-string v10, "android.net.wifi.WIFI_CTCW_STATE_CHANGED"

    invoke-direct {v4, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1134
    .local v4, "intent":Landroid/content/Intent;
    const-string v10, "CWState"

    const/16 v11, 0xa

    invoke-virtual {v4, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1135
    iget-object v10, p0, Lcom/yulong/android/telephony/CPUWDManager;->mContext:Landroid/content/Context;

    sget-object v11, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v10, v4, v11}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1138
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPUWDManager;->createAllApnList()V

    .line 1139
    const-string v10, "onRegisterRequest createAllApnList end 101115"

    invoke-virtual {p0, v10}, Lcom/yulong/android/telephony/CPUWDManager;->LOGD(Ljava/lang/String;)V

    .line 1141
    new-instance v3, Lcom/yulong/android/uwservice/DialParameters;

    invoke-direct {v3}, Lcom/yulong/android/uwservice/DialParameters;-><init>()V

    .line 1142
    .local v3, "dialParams":Lcom/yulong/android/uwservice/DialParameters;
    const-string v10, "onRegisterRequest"

    invoke-virtual {p0, v10}, Lcom/yulong/android/telephony/CPUWDManager;->LOGD(Ljava/lang/String;)V

    .line 1146
    invoke-static {v5}, Landroid/text/format/Formatter;->formatIpAddress(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v3, Lcom/yulong/android/uwservice/DialParameters;->mLocalAddr:Ljava/lang/String;

    .line 1147
    iget-object v10, v3, Lcom/yulong/android/uwservice/DialParameters;->mLocalAddr:Ljava/lang/String;

    if-nez v10, :cond_7

    .line 1149
    const-wide/16 v10, 0xc8

    invoke-static {v10, v11}, Landroid/os/SystemClock;->sleep(J)V

    .line 1150
    iget-object v10, p0, Lcom/yulong/android/telephony/CPUWDManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v10}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v5

    .line 1151
    invoke-static {v5}, Landroid/text/format/Formatter;->formatIpAddress(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v3, Lcom/yulong/android/uwservice/DialParameters;->mLocalAddr:Ljava/lang/String;

    .line 1152
    iget-object v10, v3, Lcom/yulong/android/uwservice/DialParameters;->mLocalAddr:Ljava/lang/String;

    if-nez v10, :cond_7

    .line 1153
    const-string v10, "onRegisterRequest cannot get dialParams.mLocalAddr"

    invoke-virtual {p0, v10}, Lcom/yulong/android/telephony/CPUWDManager;->LOGE(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1157
    :cond_7
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onRegisterRequest ipaddress is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v3, Lcom/yulong/android/uwservice/DialParameters;->mLocalAddr:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/yulong/android/telephony/CPUWDManager;->LOGD(Ljava/lang/String;)V

    .line 1159
    iget-object v10, p0, Lcom/yulong/android/telephony/CPUWDManager;->mWagIP:Ljava/lang/String;

    if-nez v10, :cond_8

    .line 1160
    const-string v10, "chinanetcw.chinatelecom.cn"

    iput-object v10, v3, Lcom/yulong/android/uwservice/DialParameters;->mWagAddr:Ljava/lang/String;

    .line 1188
    :goto_1
    iget-object v10, v3, Lcom/yulong/android/uwservice/DialParameters;->mWagAddr:Ljava/lang/String;

    iput-object v10, p0, Lcom/yulong/android/telephony/CPUWDManager;->mWagIPtmp:Ljava/lang/String;

    .line 1189
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "wag ip is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v3, Lcom/yulong/android/uwservice/DialParameters;->mWagAddr:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/yulong/android/telephony/CPUWDManager;->LOGD(Ljava/lang/String;)V

    .line 1197
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onRegisterRequest mWagIP is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/yulong/android/telephony/CPUWDManager;->mWagIP:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/yulong/android/telephony/CPUWDManager;->LOGE(Ljava/lang/String;)V

    .line 1200
    iput-object v1, v3, Lcom/yulong/android/uwservice/DialParameters;->mWagHostName:Ljava/lang/String;

    .line 1201
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "dialParams.mWagHostName = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v3, Lcom/yulong/android/uwservice/DialParameters;->mWagHostName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/yulong/android/telephony/CPUWDManager;->LOGE(Ljava/lang/String;)V

    .line 1203
    const-string v10, ":"

    const-string v11, ""

    invoke-virtual {v7, v10, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v3, Lcom/yulong/android/uwservice/DialParameters;->mNodeMac:Ljava/lang/String;

    .line 1204
    iget-object v10, v3, Lcom/yulong/android/uwservice/DialParameters;->mNodeMac:Ljava/lang/String;

    if-nez v10, :cond_9

    .line 1206
    const-string v10, "onRegisterRequest cannot get mNodeMac"

    invoke-virtual {p0, v10}, Lcom/yulong/android/telephony/CPUWDManager;->LOGE(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1185
    :cond_8
    iget-object v10, p0, Lcom/yulong/android/telephony/CPUWDManager;->mWagIP:Ljava/lang/String;

    iput-object v10, v3, Lcom/yulong/android/uwservice/DialParameters;->mWagAddr:Ljava/lang/String;

    goto :goto_1

    .line 1210
    :cond_9
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onRegisterRequest mNodeMac is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v3, Lcom/yulong/android/uwservice/DialParameters;->mNodeMac:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/yulong/android/telephony/CPUWDManager;->LOGD(Ljava/lang/String;)V

    .line 1211
    invoke-static {}, Lcom/yulong/android/telephony/CPTelephonyManager;->getDefault()Lcom/yulong/android/telephony/CPTelephonyManager;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/yulong/android/telephony/CPTelephonyManager;->getDualSubscriberId(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v3, Lcom/yulong/android/uwservice/DialParameters;->mIMSI:Ljava/lang/String;

    .line 1212
    iget-object v10, v3, Lcom/yulong/android/uwservice/DialParameters;->mIMSI:Ljava/lang/String;

    if-nez v10, :cond_a

    .line 1213
    const-string v10, "onRegisterRequest cannot get mIMSI"

    invoke-virtual {p0, v10}, Lcom/yulong/android/telephony/CPUWDManager;->LOGE(Ljava/lang/String;)V

    .line 1215
    :cond_a
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onRegisterRequest mIMSI is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v3, Lcom/yulong/android/uwservice/DialParameters;->mIMSI:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/yulong/android/telephony/CPUWDManager;->LOGD(Ljava/lang/String;)V

    .line 1218
    new-instance v0, Landroid/content/Intent;

    const-string v10, "yulong.inent.action.WIFI_OPERATE_RSP"

    invoke-direct {v0, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1219
    .local v0, "Localintent":Landroid/content/Intent;
    const/high16 v10, 0x4000000

    invoke-virtual {v0, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1220
    const-string v10, "operate_rsp"

    const/4 v11, 0x0

    invoke-virtual {v0, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1221
    const-string v10, "error_code"

    const/4 v11, 0x0

    invoke-virtual {v0, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1222
    iget-object v10, p0, Lcom/yulong/android/telephony/CPUWDManager;->mContext:Landroid/content/Context;

    sget-object v11, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v10, v0, v11}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1223
    const/4 v10, 0x0

    iput v10, p0, Lcom/yulong/android/telephony/CPUWDManager;->mWifiOperate:I

    .line 1225
    const/4 v10, 0x1

    iput v10, v3, Lcom/yulong/android/uwservice/DialParameters;->mVersion:I

    .line 1226
    const/4 v10, 0x1

    iput v10, v3, Lcom/yulong/android/uwservice/DialParameters;->mDialMode:I

    .line 1227
    const/4 v10, 0x0

    iput v10, v3, Lcom/yulong/android/uwservice/DialParameters;->mSecurityScope:I

    .line 1228
    const/16 v10, 0xe10

    iput v10, v3, Lcom/yulong/android/uwservice/DialParameters;->mLifeTime:I

    .line 1229
    const/4 v10, 0x1

    iput v10, v3, Lcom/yulong/android/uwservice/DialParameters;->mAuthAlgrithm:I

    .line 1230
    const/4 v10, 0x0

    iput v10, v3, Lcom/yulong/android/uwservice/DialParameters;->mSimUW:I

    .line 1231
    const/4 v10, 0x0

    iput v10, v3, Lcom/yulong/android/uwservice/DialParameters;->mOverrideReg:I

    .line 1232
    const/4 v10, 0x0

    iput v10, v3, Lcom/yulong/android/uwservice/DialParameters;->mSyncPPP:I

    .line 1233
    const/4 v10, 0x0

    iput v10, v3, Lcom/yulong/android/uwservice/DialParameters;->mIpFilter:I

    .line 1234
    const/4 v10, 0x1

    iput v10, v3, Lcom/yulong/android/uwservice/DialParameters;->mModemLight:I

    .line 1235
    const/4 v10, 0x1

    iput v10, v3, Lcom/yulong/android/uwservice/DialParameters;->mVJ:I

    .line 1236
    const/4 v10, 0x0

    iput v10, v3, Lcom/yulong/android/uwservice/DialParameters;->mMPPC:I

    .line 1237
    const/4 v10, 0x0

    iput v10, v3, Lcom/yulong/android/uwservice/DialParameters;->mForceReneg:I

    .line 1238
    invoke-virtual {p0, v3}, Lcom/yulong/android/telephony/CPUWDManager;->regist(Lcom/yulong/android/uwservice/DialParameters;)Z

    goto/16 :goto_0
.end method

.method public regist(Lcom/yulong/android/uwservice/DialParameters;)Z
    .locals 6
    .param p1, "DialParams"    # Lcom/yulong/android/uwservice/DialParameters;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 1038
    const-string v4, "start Regist uwd"

    invoke-virtual {p0, v4}, Lcom/yulong/android/telephony/CPUWDManager;->LOGD(Ljava/lang/String;)V

    .line 1040
    invoke-virtual {p0}, Lcom/yulong/android/telephony/CPUWDManager;->getUWNativeService()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1044
    :try_start_0
    iget-object v4, p0, Lcom/yulong/android/telephony/CPUWDManager;->mUWService:Lcom/yulong/android/uwservice/IUWNativeService;

    new-instance v5, Lcom/yulong/android/telephony/CPUWDManager$JavaServiceImpl;

    invoke-direct {v5, p0}, Lcom/yulong/android/telephony/CPUWDManager$JavaServiceImpl;-><init>(Lcom/yulong/android/telephony/CPUWDManager;)V

    invoke-interface {v4, v5, p1}, Lcom/yulong/android/uwservice/IUWNativeService;->UWReg(Lcom/yulong/android/uwservice/IUWJavaService;Lcom/yulong/android/uwservice/DialParameters;)I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 1045
    const-string v3, "Regist failed"

    invoke-virtual {p0, v3}, Lcom/yulong/android/telephony/CPUWDManager;->LOGD(Ljava/lang/String;)V

    .line 1046
    const-string v3, "* setPowerModeCommand 0"

    invoke-virtual {p0, v3}, Lcom/yulong/android/telephony/CPUWDManager;->LOGD(Ljava/lang/String;)V

    .line 1048
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/yulong/android/telephony/CPUWDManager;->setDetailState(I)V

    .line 1064
    :goto_0
    return v2

    .line 1051
    :cond_0
    const/4 v4, 0x2

    invoke-direct {p0, v4}, Lcom/yulong/android/telephony/CPUWDManager;->setDetailState(I)V

    .line 1053
    new-instance v1, Landroid/content/Intent;

    const-string v4, "yulong.intent.action.UW_STATE_CHANGE"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1054
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v4, 0x4000000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1055
    const-string v4, "state"

    const/4 v5, 0x2

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1056
    iget-object v4, p0, Lcom/yulong/android/telephony/CPUWDManager;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v4, v1, v5}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "intent":Landroid/content/Intent;
    :cond_1
    move v2, v3

    .line 1064
    goto :goto_0

    .line 1057
    :catch_0
    move-exception v0

    .line 1059
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "CPUwdRegist catch remote exception"

    invoke-virtual {p0, v3}, Lcom/yulong/android/telephony/CPUWDManager;->LOGE(Ljava/lang/String;)V

    .line 1060
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public startMonitoring()V
    .locals 4

    .prologue
    .line 801
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 803
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "yulong.intent.action.START_UW_SERVICE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 804
    const-string v2, "yulong.intent.action.UW_REGIST"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 805
    const-string v2, "yulong.intent.action.UW_DEREGIST"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 806
    const-string v2, "yulong.intent.action.UW_TRY_SETUP_DATA"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 807
    const-string v2, "yulong.intent.action.UW_CLEAN_UP_DATA"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 808
    const-string v2, "yulong.intent.action.UW_GET_CONN_INFO"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 809
    const-string v2, "yulong.intent.action.UW_GET_CONN_STATE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 810
    const-string v2, "yulong.intent.action.UW_GET_CONN_STATS"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 811
    const-string v2, "yulong.intent.action.UW_GET_REGIST_STATUS"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 812
    const-string v2, "yulong.intent.action.UW_SET_WAG_IP"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 813
    const-string v2, "yulong.intent.action.SELECT_NET_OPERATION"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 814
    const-string v2, "yulong.inent.action.WIFI_OPERATE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 815
    const-string v2, "yulong.intent.action.UW_TRY_SETUP_DATA_CHINATELE_TIP"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 816
    const-string v2, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 817
    const-string v2, "android.net.wifi.CTCW_TPA_READY"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 818
    const-string v2, "android.net.wifi.CTCW_TPA_REQUEST"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 819
    new-instance v2, Lcom/yulong/android/telephony/CPUWDManager$CPUwdDataStateReceiver;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/yulong/android/telephony/CPUWDManager$CPUwdDataStateReceiver;-><init>(Lcom/yulong/android/telephony/CPUWDManager;Lcom/yulong/android/telephony/CPUWDManager$1;)V

    iput-object v2, p0, Lcom/yulong/android/telephony/CPUWDManager;->mStateReceiver:Landroid/content/BroadcastReceiver;

    .line 820
    iget-object v2, p0, Lcom/yulong/android/telephony/CPUWDManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/yulong/android/telephony/CPUWDManager;->mStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    .line 822
    .local v1, "intent":Landroid/content/Intent;
    return-void
.end method

.method public trySetupData()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1275
    const-string v2, "CP_COMM:CPUWDManager"

    const-string v3, "start trySetupData"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1279
    invoke-virtual {p0}, Lcom/yulong/android/telephony/CPUWDManager;->getUWNativeService()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1280
    const-string v2, "CP_COMM:CPUWDManager"

    const-string v3, "mUWService is null, get the native service again"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1315
    :cond_0
    :goto_0
    return v1

    .line 1284
    :cond_1
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPUWDManager;->isDataAllowed()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1285
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPUWDManager;->buildWaitingApns()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/yulong/android/telephony/CPUWDManager;->waitingApns:Ljava/util/ArrayList;

    .line 1286
    iget-object v2, p0, Lcom/yulong/android/telephony/CPUWDManager;->waitingApns:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1287
    const-string v2, "No APN found"

    invoke-virtual {p0, v2}, Lcom/yulong/android/telephony/CPUWDManager;->LOGD(Ljava/lang/String;)V

    goto :goto_0

    .line 1291
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Create from allApns : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/yulong/android/telephony/CPUWDManager;->allApns:Ljava/util/ArrayList;

    invoke-direct {p0, v3}, Lcom/yulong/android/telephony/CPUWDManager;->apnListToString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/yulong/android/telephony/CPUWDManager;->LOGD(Ljava/lang/String;)V

    .line 1293
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPUWDManager;->getNextApn()Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-result-object v0

    .line 1294
    .local v0, "apn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    if-eqz v0, :cond_0

    .line 1297
    iput-object v0, p0, Lcom/yulong/android/telephony/CPUWDManager;->mActiveApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    .line 1298
    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->proxy:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->port:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/yulong/android/telephony/CPUWDManager;->setHttpProxy(Ljava/lang/String;Ljava/lang/String;)V

    .line 1299
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "proxy is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->proxy:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", port is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->port:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/yulong/android/telephony/CPUWDManager;->LOGD(Ljava/lang/String;)V

    .line 1303
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setup waitingApns :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/yulong/android/telephony/CPUWDManager;->waitingApns:Ljava/util/ArrayList;

    invoke-direct {p0, v2}, Lcom/yulong/android/telephony/CPUWDManager;->apnListToString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/yulong/android/telephony/CPUWDManager;->LOGD(Ljava/lang/String;)V

    .line 1306
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPUWDManager;->setupData()Z

    .line 1307
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1309
    .end local v0    # "apn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot setup data ,the uwd has not registered and the status is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/yulong/android/telephony/CPUWDManager;->mUwStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/yulong/android/telephony/CPUWDManager;->LOGD(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
